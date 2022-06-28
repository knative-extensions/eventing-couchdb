module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.10.1
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.6
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/otiai10/copy v1.2.0 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.uber.org/zap v1.21.0
	golang.org/x/net v0.0.0-20220225172249-27dd8689420f
	k8s.io/api v0.23.8
	k8s.io/apimachinery v0.23.8
	k8s.io/client-go v0.23.8
	knative.dev/eventing v0.32.1-0.20220628020529-eaec7294bc50
	knative.dev/hack v0.0.0-20220610014127-dc6c287516dc
	knative.dev/pkg v0.0.0-20220628014530-177751338ddc
)
