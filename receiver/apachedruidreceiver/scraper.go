// Copyright  OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package apachedruidreceiver

import (
	"context"
	"github.com/gorilla/mux"
	"github.com/patrickmn/go-cache"
	"go.opentelemetry.io/collector/component"
	"time"

	"go.opentelemetry.io/collector/model/pdata"

	"github.com/open-telemetry/opentelemetry-collector-contrib/receiver/apachedruidreceiver/listener"
)

type apacheDruidScraper struct {
	druidClient client
	config      *Config
	dnsCache    *cache.Cache
	settings    component.TelemetrySettings
}

func newApacheDruidScraper(settings component.TelemetrySettings, config *Config, ) *apacheDruidScraper {
	return &apacheDruidScraper{
		settings: settings,
		config:   config,
		//mb:     metadata.NewMetricsBuilder(config.Metrics), #TODO: Need to change this if filtering based on metrics present.
	}
}

// start starts the scraper by initializing the server to capture emitted druid metrics and also creates API connections.
func (m *apacheDruidScraper) start(_ context.Context, host component.Host) error {
	dnsCache := cache.New(5*time.Minute, 10*time.Minute)
	m.dnsCache = dnsCache
	router := mux.NewRouter()
	//NEED TO INCLUDE HOST DETAILS HERE
	router.Handle("/druid", listener.DruidHTTPEndpoint(m.settings.Logger, m.config.DisableHistogramMetrics, m.dnsCache))
	druidClient, err := newApacheDruidClient(m.config, host, m.settings)
	if err != nil {
		return err
	}
	m.druidClient = druidClient

	return nil
}

// shutdown flushes dnsCache
func (m *apacheDruidScraper) shutdown(context.Context) error {
	m.dnsCache.Flush()
	return nil
}

// scrape scrapes the apache druid db metrics from emitter and api calls, transforms them and labels them into a metric slices.
func (m *apacheDruidScraper) scrape(context.Context) (pdata.Metrics, error) {
	// TODO: Need to implement this accroding to metrics
	return pdata.Metrics{}, nil
}
