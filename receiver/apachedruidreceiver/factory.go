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
	"go.opentelemetry.io/collector/config/confighttp"
	"go.opentelemetry.io/collector/config/configtls"
	"time"

	"go.opentelemetry.io/collector/component"
	"go.opentelemetry.io/collector/config"
	"go.opentelemetry.io/collector/consumer"
	"go.opentelemetry.io/collector/receiver/receiverhelper"
	"go.opentelemetry.io/collector/receiver/scraperhelper"
)

const (
	typeStr         = "apachedruid"
	defaultEndpoint = "http://localhost:8891"
)

//TODO: Include it in the internal/components/components.go:143
func NewFactory() component.ReceiverFactory {
	return receiverhelper.NewFactory(
		typeStr,
		createDefaultConfig,
		receiverhelper.WithMetrics(createMetricsReceiver))
}

func createDefaultConfig() config.Receiver {
	return &Config{
		ScraperControllerSettings: scraperhelper.ScraperControllerSettings{
			ReceiverSettings:   config.NewReceiverSettings(config.NewComponentID(typeStr)),
			CollectionInterval: 10 * time.Second, //TODO: This should be less than the emitter time interval
		},

		HTTPClientSettings: confighttp.HTTPClientSettings{
			TLSSetting: configtls.TLSClientSetting{},
			Endpoint:   defaultEndpoint,
			Timeout:    1 * time.Minute,
		},

		//RouterURI: confignet.NetAddr{
		//	Endpoint:  "localhost:8891",
		//	Transport: "tcp",
		//},
		MetricsEmitterPort:      "8911",
		DisableHistogramMetrics: false,
		MetricsCleanUpTTL:       5 * time.Minute,
		//Metrics: metadata.DefaultMetricsSettings(), #TODO
	}
}

func createMetricsReceiver(
	_ context.Context,
	params component.ReceiverCreateSettings,
	rConf config.Receiver,
	consumer consumer.Metrics,
) (component.MetricsReceiver, error) {
	cfg := rConf.(*Config)

	ns := newApacheDruidScraper(params.TelemetrySettings, cfg)
	scraper, err := scraperhelper.NewScraper(typeStr, ns.scrape, scraperhelper.WithStart(ns.start),
		scraperhelper.WithShutdown(ns.shutdown))

	if err != nil {
		return nil, err
	}

	return scraperhelper.NewScraperControllerReceiver(
		&cfg.ScraperControllerSettings, params, consumer,
		scraperhelper.AddScraper(scraper),
	)
}
