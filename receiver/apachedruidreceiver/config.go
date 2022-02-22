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
	"go.opentelemetry.io/collector/config/confighttp"
	"go.opentelemetry.io/collector/receiver/scraperhelper"
	"time"
)

type Config struct {
	scraperhelper.ScraperControllerSettings `mapstructure:",squash"`
	confighttp.HTTPClientSettings           `mapstructure:",squash"`
	//RouterURI                               confignet.NetAddr `mapstructure:"routeruri,omitempty"`                 //URL of druid router or coordinator to make API calls
	MetricsEmitterPort                      string            `mapstructure:"emitterport,omitempty"`               // Port to listen druid exporter
	DisableHistogramMetrics                 bool              `mapstructure:"disable_histogram_metrics,omitempty"` // Flag whether to export histogram metrics or not.
	MetricsCleanUpTTL                       time.Duration     `mapstructure:"metrics_clean_up_ttl,omitempty"`      //TTL to provide time in minutes for metrics cleanup. // TODO: REMOVE
	Username                                string            `mapstructure:"username,omitempty"`                  //HTTP basic auth username
	Password                                string            `mapstructure:"password,omitempty"`                  //HTTP basic auth password
	//InsecureTLS                             bool              `mapstructure:"allow_insecure_tls,omitempty"`        //Boolean flag to skip TLS verification
	//CertFile                                string            `mapstructure:"certfile,omitempty"`                  //"A pem encoded certificate file, EnvVar - CERT_FILE. (Only if tls is configured)"
	//KeyFile                                 string            `mapstructure:"keyfile,omitempty"`                   //"A pem encoded key file, EnvVar - CERT_KEY. (Only if tls is configured)"
	//CAFile                                  string            `mapstructure:"cafile,omitempty"`                    //"A pem encoded CA's certificate file, EnvVar - CA_CERT_FILE. (Only if tls is configured)"
	//Metrics                                 metadata.MetricsSettings `mapstructure:"metrics"` //TODO: Check if we need to filter based on Metrics
}

// TODO: Implement validate method like receiver/couchbasereceiver/config.go:46
