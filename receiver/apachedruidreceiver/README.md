# Apache Druid Receiver

This receiver capture all of the metrics that druid exposes or emits

Supported pipeline types: `metrics`

> :construction: This receiver is in **BETA**. Configuration fields and metric data model are subject to change.

## Prerequisites

This receiver supports Apache Druid (#TODO:Check supporting versions)

## Druid Configuration Changes

There are some changes needed in the druid cluster to exploit full capabilities of druid receiver. Druid emits the metrics to different emitters. So, in druid database, we must allow the http emitter.

If you are using the druid properties file you must add this entry to the file `common.properties` &&  `runtime.properties` of router node:-

```properties
druid.emitter.http.recipientBaseUrl=http://<druid_exporter_url>:<druid_exporter_port>/druid
druid.emitter=http
```

## Configuration

//TODO: SHould we have following defaults ??

The following settings are optional:

- `routeruri`: (default = `localhost:8888`)
- `emitterport`: (default = `8911`)
- `disable_histogram_metrics`: (default = `false`)
- `metrics_clean_up_ttl`: (default = `5s`)
- `username`: (default = ``)
- `password`: The password to the username.
- `allow_insecure_tls`: (default = `true`)
- `certfile`: (default = ``) : Applicable only If TLS is enabled
- `keyfile`: (default = ``) : Applicable only If TLS is enabled
- `cafile`: (default = ``) : Applicable only If TLS is enabled
- `collection_interval` (default = `10s`): This receiver collects metrics on an interval. This value must be a string readable by Golang's [time.ParseDuration](https://pkg.go.dev/time#ParseDuration). Valid time units are `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.

### Example Configuration #TODO

```yaml
receivers:
  apachedruid:
    routeruri: http://localhost:8082
    emitterport: 8911
    disable_histogram_metrics:
    metrics_clean_up_ttl:
    username: otel
    password: $MYSQL_PASSWORD
    allow_insecure_tls: true
    collection_interval: 10s
```

The full list of settings exposed for this receiver are documented [here](./config.go) with detailed sample configurations [here](./testdata/config.yaml).

## Metrics

Details about the metrics produced by this receiver can be found in [metadata.yaml](./metadata.yaml)
