package apachedruidreceiver

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"go.opentelemetry.io/collector/component"
	"go.uber.org/zap"
	"io"
	"net/http"
)

type client interface {
	GetHealth(ctx context.Context, string2 string) (float64, error)
	GetSQLResponse(ctx context.Context, url string, query string) ([]byte, error)
}

type druidClient struct {
	client         *http.Client
	routerEndPoint string
	credentials    druidCredentials
	logger         *zap.Logger
}

type druidCredentials struct {
	username string
	password string
}

func newApacheDruidClient(cfg *Config, host component.Host, settings component.TelemetrySettings) (client, error) {
	httpClient, err := cfg.ToClient(host.GetExtensions(), settings)
	if err != nil {
		return nil, fmt.Errorf("failed to create HTTP Client: %w", err)
	}
	return &druidClient{
		client:         httpClient,
		routerEndPoint: cfg.Endpoint,
		credentials: druidCredentials{
			username: cfg.Username,
			password: cfg.Password,
		},
		logger: settings.Logger,
	}, nil
}

// GetHealth returns that druid is healthy or not
func (c *druidClient) GetHealth(ctx context.Context, path string) (float64, error) {
	body, err := c.GetResponse(ctx, http.MethodGet, path, nil)
	if err != nil {
		c.logger.Debug("Failed to retrieve cluster health data", zap.Error(err))
		return 0, err
	}
	var health bool
	err = json.Unmarshal(body, &health)
	if err != nil {
		return 0, err
	}
	fmt.Printf("Successful GET request on Druid API - %v", path)
	if health == true {
		return 1, nil
	}
	return 0, err
}

// GetSQLResponse will return API response for a druid SQL query
func (c *druidClient) GetSQLResponse(ctx context.Context, path string, query string) ([]byte, error) {
	// Create Sql Query DTO
	queryDTO := sqlQuery{Query: query}
	queryBody, err := json.Marshal(queryDTO)
	if err != nil {
		return nil, fmt.Errorf("cannot marshal query: %v", err)
	}

	payloadData, err := c.GetResponse(ctx, http.MethodPost, path, queryBody)

	return payloadData, nil
}

// GetResponse will return API response for druid
func (c *druidClient) GetResponse(ctx context.Context, requestType string, path string, queryBody []byte) ([]byte, error) {
	// Construct endpoint and create request
	url := c.routerEndPoint + path
	req, err := http.NewRequestWithContext(ctx, requestType, url, bytes.NewReader(queryBody))
	if err != nil {
		return nil, fmt.Errorf("failed to create get request for path %s: %w", path, err)
	}

	req.Header.Set("Content-Type", "application/json")

	// Set user/pass authentication
	req.SetBasicAuth(c.credentials.username, c.credentials.password)

	// Make request
	resp, err := c.client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("failed to make http request: %w", err)
	}

	// Defer body close
	defer func() {
		if closeErr := resp.Body.Close(); closeErr != nil {
			c.logger.Warn("failed to close response body", zap.Error(closeErr))
		}
	}()

	// Check for OK status code
	payloadData, err := io.ReadAll(resp.Body)
	if resp.StatusCode != http.StatusOK {
		c.logger.Debug("Apache Druid API non-200", zap.Error(err), zap.Int("status_code", resp.StatusCode))

		// Attempt to extract the error payload
		if err != nil {
			c.logger.Debug("failed to read payload error message", zap.Error(err))
		} else {
			c.logger.Debug("Apache Druid API Error", zap.ByteString("api_error", payloadData))
		}

		return nil, fmt.Errorf("non 200 code returned %d", resp.StatusCode)
	}
	return payloadData, nil
}

type sqlQuery struct {
	Query string `json:"query"`
}
