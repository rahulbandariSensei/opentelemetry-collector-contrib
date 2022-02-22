module github.com/open-telemetry/opentelemetry-collector-contrib

go 1.17

require (
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/alibabacloudlogserviceexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awscloudwatchlogsexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsemfexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awskinesisexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsprometheusremotewriteexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsxrayexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/azuremonitorexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/carbonexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/datadogexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/dynatraceexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/elasticexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/elasticsearchexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/f5cloudexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/fileexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/googlecloudexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/honeycombexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/humioexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/influxdbexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/jaegerexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/jaegerthrifthttpexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/kafkaexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/loadbalancingexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/logzioexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/lokiexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/newrelicexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/opencensusexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/parquetexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusremotewriteexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sapmexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sentryexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/signalfxexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/skywalkingexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/splunkhecexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/stackdriverexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sumologicexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/tanzuobservabilityexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/tencentcloudlogserviceexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/exporter/zipkinexporter v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/asapauthextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/awsproxy v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/basicauthextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/bearertokenauthextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/fluentbitextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/healthcheckextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/httpforwarder v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/oauth2clientauthextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/ecstaskobserver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/hostobserver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/k8sobserver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/oidcauthextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/extension/storage v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/cumulativetodeltaprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/deltatorateprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/filterprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/groupbyattrsprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/groupbytraceprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/k8sattributesprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricsgenerationprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricstransformprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/probabilisticsamplerprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourcedetectionprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourceprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/routingprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/spanmetricsprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/spanprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/processor/tailsamplingprocessor v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awscontainerinsightreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awsecscontainermetricsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awsxrayreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/carbonreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/cloudfoundryreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/collectdreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/dockerstatsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/dotnetdiagnosticsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/filelogreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/fluentforwardreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/googlecloudspannerreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/influxdbreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jaegerreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jmxreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/journaldreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/k8sclusterreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/k8seventsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkametricsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkareceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kubeletstatsreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/memcachedreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/mongodbatlasreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/mysqlreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/opencensusreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/podmanreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusexecreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/receivercreator v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/redisreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/sapmreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/signalfxreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/simpleprometheusreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/splunkhecreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/statsdreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/syslogreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/tcplogreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/udplogreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/wavefrontreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/windowsperfcountersreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zipkinreceiver v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zookeeperreceiver v0.43.0
	github.com/prometheus/prometheus v1.8.2-0.20220117154355-4855a0c067e2
	github.com/stretchr/testify v1.7.0
	go.opentelemetry.io/collector v0.44.0
	golang.org/x/sys v0.0.0-20220114195835-da31bd327af9
)

require (
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/stanza v0.43.0
	github.com/open-telemetry/opentelemetry-collector-contrib/receiver/postgresqlreceiver v0.43.0
	github.com/shirou/gopsutil v3.21.10+incompatible // indirect
)

// Replace references to modules that are in this repository with their relateive paths
// so that we always build with current (latest) version of the source code.

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/awsutil => ./internal/aws/awsutil

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/containerinsight => ./internal/aws/containerinsight

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/ecsutil => ./internal/aws/ecsutil

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/k8s => ./internal/aws/k8s

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/metrics => ./internal/aws/metrics

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/proxy => ./internal/aws/proxy

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/xray => ./internal/aws/xray

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/common => ./internal/common

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/cwlogs => ./internal/aws/cwlogs

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal => ./internal/coreinternal

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/docker => ./internal/docker

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/k8sconfig => ./internal/k8sconfig

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/kubelet => ./internal/kubelet

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/scrapertest => ./internal/scrapertest

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/sharedcomponent => ./internal/sharedcomponent

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/splunk => ./internal/splunk

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/stanza => ./internal/stanza

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/alibabacloudlogserviceexporter => ./exporter/alibabacloudlogserviceexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awscloudwatchlogsexporter => ./exporter/awscloudwatchlogsexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsemfexporter => ./exporter/awsemfexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awskinesisexporter => ./exporter/awskinesisexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsprometheusremotewriteexporter => ./exporter/awsprometheusremotewriteexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsxrayexporter => ./exporter/awsxrayexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/azuremonitorexporter => ./exporter/azuremonitorexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/carbonexporter => ./exporter/carbonexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/datadogexporter => ./exporter/datadogexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/dynatraceexporter => ./exporter/dynatraceexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/f5cloudexporter => ./exporter/f5cloudexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/fileexporter => ./exporter/fileexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/googlecloudexporter => ./exporter/googlecloudexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/honeycombexporter => ./exporter/honeycombexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/humioexporter => ./exporter/humioexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/influxdbexporter => ./exporter/influxdbexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/jaegerexporter => ./exporter/jaegerexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/jaegerthrifthttpexporter => ./exporter/jaegerthrifthttpexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/kafkaexporter => ./exporter/kafkaexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/loadbalancingexporter => ./exporter/loadbalancingexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/logzioexporter => ./exporter/logzioexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/lokiexporter => ./exporter/lokiexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/newrelicexporter => ./exporter/newrelicexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/opencensusexporter => ./exporter/opencensusexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/parquetexporter => ./exporter/parquetexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusexporter => ./exporter/prometheusexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusremotewriteexporter => ./exporter/prometheusremotewriteexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sapmexporter => ./exporter/sapmexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sentryexporter => ./exporter/sentryexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/signalfxexporter => ./exporter/signalfxexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/skywalkingexporter => ./exporter/skywalkingexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/splunkhecexporter => ./exporter/splunkhecexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/stackdriverexporter => ./exporter/stackdriverexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/sumologicexporter => ./exporter/sumologicexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/tanzuobservabilityexporter => ./exporter/tanzuobservabilityexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/tencentcloudlogserviceexporter => ./exporter/tencentcloudlogserviceexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/elasticexporter => ./exporter/elasticexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/elasticsearchexporter => ./exporter/elasticsearchexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/exporter/zipkinexporter => ./exporter/zipkinexporter

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/asapauthextension => ./extension/asapauthextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/awsproxy => ./extension/awsproxy

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/basicauthextension => ./extension/basicauthextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/bearertokenauthextension => ./extension/bearertokenauthextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/fluentbitextension => ./extension/fluentbitextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/healthcheckextension => ./extension/healthcheckextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/httpforwarder => ./extension/httpforwarder

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/jaegerremotesampling => ./extension/jaegerremotesampling

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/oauth2clientauthextension => ./extension/oauth2clientauthextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer => ./extension/observer

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/ecstaskobserver => ./extension/observer/ecstaskobserver

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/hostobserver => ./extension/observer/hostobserver

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/observer/k8sobserver => ./extension/observer/k8sobserver

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/oidcauthextension => ./extension/oidcauthextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension => ./extension/pprofextension

replace github.com/open-telemetry/opentelemetry-collector-contrib/extension/storage => ./extension/storage

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/batchperresourceattr => ./pkg/batchperresourceattr

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/batchpersignal => ./pkg/batchpersignal

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/experimentalmetricmetadata => ./pkg/experimentalmetricmetadata

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/resourcetotelemetry => ./pkg/resourcetotelemetry

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/jaeger => ./pkg/translator/jaeger

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/opencensus => ./pkg/translator/opencensus

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/zipkin => ./pkg/translator/zipkin

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/prometheusremotewrite => ./pkg/translator/prometheusremotewrite

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor => ./processor/attributesprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/cumulativetodeltaprocessor => ./processor/cumulativetodeltaprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/deltatorateprocessor => ./processor/deltatorateprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/filterprocessor => ./processor/filterprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/groupbyattrsprocessor => ./processor/groupbyattrsprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/groupbytraceprocessor => ./processor/groupbytraceprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/k8sattributesprocessor => ./processor/k8sattributesprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricsgenerationprocessor => ./processor/metricsgenerationprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricstransformprocessor => ./processor/metricstransformprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/probabilisticsamplerprocessor => ./processor/probabilisticsamplerprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourcedetectionprocessor => ./processor/resourcedetectionprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourceprocessor => ./processor/resourceprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/routingprocessor => ./processor/routingprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/spanmetricsprocessor => ./processor/spanmetricsprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/spanprocessor => ./processor/spanprocessor/

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/tailsamplingprocessor => ./processor/tailsamplingprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/processor/transformprocessor => ./processor/transformprocessor

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awscontainerinsightreceiver => ./receiver/awscontainerinsightreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awsecscontainermetricsreceiver => ./receiver/awsecscontainermetricsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/awsxrayreceiver => ./receiver/awsxrayreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/carbonreceiver => ./receiver/carbonreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/cloudfoundryreceiver => ./receiver/cloudfoundryreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/collectdreceiver => ./receiver/collectdreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/dockerstatsreceiver => ./receiver/dockerstatsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/dotnetdiagnosticsreceiver => ./receiver/dotnetdiagnosticsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/filelogreceiver => ./receiver/filelogreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/fluentforwardreceiver => ./receiver/fluentforwardreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/googlecloudspannerreceiver => ./receiver/googlecloudspannerreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver => ./receiver/hostmetricsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/influxdbreceiver => ./receiver/influxdbreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jaegerreceiver => ./receiver/jaegerreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/jmxreceiver => ./receiver/jmxreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/journaldreceiver => ./receiver/journaldreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/k8sclusterreceiver => ./receiver/k8sclusterreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/k8seventsreceiver => ./receiver/k8seventsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkametricsreceiver => ./receiver/kafkametricsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kafkareceiver => ./receiver/kafkareceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/kubeletstatsreceiver => ./receiver/kubeletstatsreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/memcachedreceiver => ./receiver/memcachedreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/mongodbatlasreceiver => ./receiver/mongodbatlasreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/mysqlreceiver => ./receiver/mysqlreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/opencensusreceiver => ./receiver/opencensusreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/podmanreceiver => ./receiver/podmanreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/postgresqlreceiver => ./receiver/postgresqlreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusexecreceiver => ./receiver/prometheusexecreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver => ./receiver/prometheusreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/receivercreator => ./receiver/receivercreator

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/redisreceiver => ./receiver/redisreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/sapmreceiver => ./receiver/sapmreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/signalfxreceiver => ./receiver/signalfxreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/simpleprometheusreceiver => ./receiver/simpleprometheusreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/splunkhecreceiver => ./receiver/splunkhecreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/statsdreceiver => ./receiver/statsdreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/syslogreceiver => ./receiver/syslogreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/tcplogreceiver => ./receiver/tcplogreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/udplogreceiver => ./receiver/udplogreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/wavefrontreceiver => ./receiver/wavefrontreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/windowsperfcountersreceiver => ./receiver/windowsperfcountersreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zipkinreceiver => ./receiver/zipkinreceiver

replace github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zookeeperreceiver => ./receiver/zookeeperreceiver

// see https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/4433
exclude github.com/StackExchange/wmi v1.2.0

retract v0.37.0 // Contains dependencies on v0.36.0 components, which should have been updated to v0.37.0.
