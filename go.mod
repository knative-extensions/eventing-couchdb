module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.4.1
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.6
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/otiai10/copy v1.2.0 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.uber.org/zap v1.18.1
	golang.org/x/net v0.0.0-20210726213435-c6fcb2dbf985
	k8s.io/api v0.20.7
	k8s.io/apimachinery v0.20.7
	k8s.io/client-go v0.20.7
	knative.dev/eventing v0.25.0
	knative.dev/hack v0.0.0-20210622141627-e28525d8d260
	knative.dev/pkg v0.0.0-20210803160015-21eb4c167cc5
)
