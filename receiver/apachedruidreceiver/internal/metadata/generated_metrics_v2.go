// Code generated by mdatagen. DO NOT EDIT.

package metadata

import (
	"time"

	"go.opentelemetry.io/collector/model/pdata"
)

// MetricSettings provides common settings for a particular metric.
type MetricSettings struct {
	Enabled bool `mapstructure:"enabled"`
}

// MetricsSettings provides settings for apachedruidreceiver metrics.
type MetricsSettings struct {
	ApachedruidQueryTime MetricSettings `mapstructure:"apachedruid.query_time"`
}

func DefaultMetricsSettings() MetricsSettings {
	return MetricsSettings{
		ApachedruidQueryTime: MetricSettings{
			Enabled: true,
		},
	}
}

type metricApachedruidQueryTime struct {
	data     pdata.Metric   // data buffer for generated metric.
	settings MetricSettings // metric settings provided by user.
	capacity int            // max observed number of data points added to the metric.
}

// init fills apachedruid.query_time metric with initial data.
func (m *metricApachedruidQueryTime) init() {
	m.data.SetName("apachedruid.query_time")
	m.data.SetDescription("Milliseconds taken to complete a query.")
	m.data.SetUnit("1")
	m.data.SetDataType(pdata.MetricDataTypeSum)
	m.data.Sum().SetIsMonotonic(false)
	m.data.Sum().SetAggregationTemporality(pdata.MetricAggregationTemporalityCumulative)
	m.data.Sum().DataPoints().EnsureCapacity(m.capacity)
}

func (m *metricApachedruidQueryTime) recordDataPoint(start pdata.Timestamp, ts pdata.Timestamp, val int64, dataSourceAttributeValue string, hostAttributeValue string, serviceNameAttributeValue string) {
	if !m.settings.Enabled {
		return
	}
	dp := m.data.Sum().DataPoints().AppendEmpty()
	dp.SetStartTimestamp(start)
	dp.SetTimestamp(ts)
	dp.SetIntVal(val)
	dp.Attributes().Insert(A.DataSource, pdata.NewAttributeValueString(dataSourceAttributeValue))
	dp.Attributes().Insert(A.Host, pdata.NewAttributeValueString(hostAttributeValue))
	dp.Attributes().Insert(A.ServiceName, pdata.NewAttributeValueString(serviceNameAttributeValue))
}

// updateCapacity saves max length of data point slices that will be used for the slice capacity.
func (m *metricApachedruidQueryTime) updateCapacity() {
	if m.data.Sum().DataPoints().Len() > m.capacity {
		m.capacity = m.data.Sum().DataPoints().Len()
	}
}

// emit appends recorded metric data to a metrics slice and prepares it for recording another set of data points.
func (m *metricApachedruidQueryTime) emit(metrics pdata.MetricSlice) {
	if m.settings.Enabled && m.data.Sum().DataPoints().Len() > 0 {
		m.updateCapacity()
		m.data.MoveTo(metrics.AppendEmpty())
		m.init()
	}
}

func newMetricApachedruidQueryTime(settings MetricSettings) metricApachedruidQueryTime {
	m := metricApachedruidQueryTime{settings: settings}
	if settings.Enabled {
		m.data = pdata.NewMetric()
		m.init()
	}
	return m
}

// MetricsBuilder provides an interface for scrapers to report metrics while taking care of all the transformations
// required to produce metric representation defined in metadata and user settings.
type MetricsBuilder struct {
	startTime                  pdata.Timestamp
	metricApachedruidQueryTime metricApachedruidQueryTime
}

// metricBuilderOption applies changes to default metrics builder.
type metricBuilderOption func(*MetricsBuilder)

// WithStartTime sets startTime on the metrics builder.
func WithStartTime(startTime pdata.Timestamp) metricBuilderOption {
	return func(mb *MetricsBuilder) {
		mb.startTime = startTime
	}
}

func NewMetricsBuilder(settings MetricsSettings, options ...metricBuilderOption) *MetricsBuilder {
	mb := &MetricsBuilder{
		startTime:                  pdata.NewTimestampFromTime(time.Now()),
		metricApachedruidQueryTime: newMetricApachedruidQueryTime(settings.ApachedruidQueryTime),
	}
	for _, op := range options {
		op(mb)
	}
	return mb
}

// Emit appends generated metrics to a pdata.MetricsSlice and updates the internal state to be ready for recording
// another set of data points. This function will be doing all transformations required to produce metric representation
// defined in metadata and user settings, e.g. delta/cumulative translation.
func (mb *MetricsBuilder) Emit(metrics pdata.MetricSlice) {
	mb.metricApachedruidQueryTime.emit(metrics)
}

// RecordApachedruidQueryTimeDataPoint adds a data point to apachedruid.query_time metric.
func (mb *MetricsBuilder) RecordApachedruidQueryTimeDataPoint(ts pdata.Timestamp, val int64, dataSourceAttributeValue string, hostAttributeValue string, serviceNameAttributeValue string) {
	mb.metricApachedruidQueryTime.recordDataPoint(mb.startTime, ts, val, dataSourceAttributeValue, hostAttributeValue, serviceNameAttributeValue)
}

// Reset resets metrics builder to its initial state. It should be used when external metrics source is restarted,
// and metrics builder should update its startTime and reset it's internal state accordingly.
func (mb *MetricsBuilder) Reset(options ...metricBuilderOption) {
	mb.startTime = pdata.NewTimestampFromTime(time.Now())
	for _, op := range options {
		op(mb)
	}
}

// Attributes contains the possible metric attributes that can be used.
var Attributes = struct {
	// DataSource (The actual datasource of the metric.)
	DataSource string
	// Host (The host which is responsible(emitted) for the metrics)
	Host string
	// ServiceName (The service which emitted this metrics)
	ServiceName string
}{
	"data_source",
	"host",
	"service_name",
}

// A is an alias for Attributes.
var A = Attributes
