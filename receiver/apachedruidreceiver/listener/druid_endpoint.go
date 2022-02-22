package listener

import (
	"encoding/json"
	"fmt"
	"github.com/golang/gddo/httputil/header"
	"github.com/patrickmn/go-cache"
	"go.uber.org/zap"
	"io"
	"io/ioutil"
	"net/http"
)

// DruidHTTPEndpoint is the endpoint to listen all druid metrics
//TODO: Check for log messages
func DruidHTTPEndpoint(logger *zap.Logger, disableHistogram bool, dnsCache *cache.Cache) http.HandlerFunc {
	return func(w http.ResponseWriter, req *http.Request) {
		var druidData []map[string]interface{}
		//var id string
		reqHeader, _ := header.ParseValueAndParams(req.Header, "Content-Type")
		if req.Method == "POST" && reqHeader == "application/json" {
			output, err := ioutil.ReadAll(req.Body)
			defer func(Body io.ReadCloser) {
				err := Body.Close()
				if err != nil {
					logger.Warn("Error closing the request body")
				}
			}(req.Body)
			if err != nil {
				logger.Debug("Unable to read JSON response from druid emitter", zap.Error(err))
				return
			}
			err = json.Unmarshal(output, &druidData)
			if err != nil {
				logger.Error("Error decoding JSON sent by druid", zap.Error(err))
				if druidData != nil {
					logger.Debug(fmt.Sprintf("%v", druidData))
				}
				return
			}
			if druidData == nil {
				logger.Debug(fmt.Sprintf("The dataset for druid is empty, can be ignored: %v", druidData))
				return
			}
			//for _, data := range druidData {
			//	metric := fmt.Sprintf("%v", data["metric"])
			//	service := fmt.Sprintf("%v", data["service"])
			//	hostname := fmt.Sprintf("%v", data["host"])
			//	datasource := data["dataSource"]
			//	value, _ := strconv.ParseFloat(fmt.Sprintf("%v", data["value"]), 64)
			//
			//	if data["id"] != nil {
			//		id = fmt.Sprintf("%v", data["id"])
			//	} else {
			//		id = ""
			//	}
			//	// Reverse DNS Lookup
			//	// Mutates dnsCache
			//	hostValue := strings.Split(hostname, ":")[0]
			//	dnsLookupValue := utils.ReverseDNSLookup(logger, hostValue, dnsCache)
			//
			//	host := strings.Replace(hostname, hostValue, dnsLookupValue, 1) // Adding back port

			//TODO: Should we report metrics without datasource.
			//if data["dataSource"] != nil {
			//	if arrDatasource, ok := datasource.([]interface{}); ok { // Array datasource
			//		for _, entryDatasource := range arrDatasource {
			//			if !disableHistogram {
			//				histogram.With(prometheus.Labels{
			//					"metric_name": strings.Replace(metric, "/", "-", 3),
			//					"service":     strings.Replace(service, "/", "-", 3),
			//					"datasource":  entryDatasource.(string),
			//					"host":        host,
			//					"id":          id,
			//				}).Observe(value)
			//			}
			//
			//			labels := prometheus.Labels{
			//				"metric_name": strings.Replace(metric, "/", "-", 3),
			//				"service":     strings.Replace(service, "/", "-", 3),
			//				"datasource":  entryDatasource.(string),
			//				"host":        host,
			//				"id":          id,
			//			}
			//			gaugeCleaner.add(labels)
			//			gauge.With(labels).Set(value)
			//		}
			//	} else { // Single datasource
			//		if !disableHistogram {
			//			histogram.With(prometheus.Labels{
			//				"metric_name": strings.Replace(metric, "/", "-", 3),
			//				"service":     strings.Replace(service, "/", "-", 3),
			//				"datasource":  datasource.(string),
			//				"host":        host,
			//				"id":          id,
			//			}).Observe(value)
			//		}
			//
			//		labels := prometheus.Labels{
			//			"metric_name": strings.Replace(metric, "/", "-", 3),
			//			"service":     strings.Replace(service, "/", "-", 3),
			//			"datasource":  datasource.(string),
			//			"host":        host,
			//			"id":          id,
			//		}
			//		gaugeCleaner.add(labels)
			//		gauge.With(labels).Set(value)
			//	}
			//} else { // Missing datasource case
			//	if !disableHistogram {
			//		histogram.With(prometheus.Labels{
			//			"metric_name": strings.Replace(metric, "/", "-", 3),
			//			"service":     strings.Replace(service, "/", "-", 3),
			//			"datasource":  "",
			//			"host":        host,
			//			"id":          id,
			//		}).Observe(value)
			//	}
			//
			//	labels := prometheus.Labels{
			//		"metric_name": strings.Replace(metric, "/", "-", 3),
			//		"service":     strings.Replace(service, "/", "-", 3),
			//		"datasource":  "",
			//		"host":        host,
			//		"id":          id,
			//	}
			//	gaugeCleaner.add(labels)
			//	gauge.With(labels).Set(value)
			//}
		}

		logger.Info(fmt.Sprintf("Successfully collected data from druid emitter, %s", druidData[0]["service"].(string)))
	}
	//else {
	//	logger.Warn("Not able to collect metrics from emitter, check whether apache druid emitter is enabled or not.")
	//}
	//}
}
