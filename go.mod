module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.2.0
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.4
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/otiai10/copy v1.2.0 // indirect
	github.com/stretchr/testify v1.6.0 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.uber.org/zap v1.16.0
	golang.org/x/net v0.0.0-20201209123823-ac852fbbde11
	k8s.io/api v0.18.12
	k8s.io/apimachinery v0.18.12
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
	knative.dev/eventing v0.20.1-0.20210114124032-056bc2518444
	knative.dev/hack v0.0.0-20210112093330-d946d2557383
	knative.dev/pkg v0.0.0-20210112143930-acbf2af596cf
)

replace (
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.3.1
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v0.9.2
	k8s.io/api => k8s.io/api v0.18.8
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.18.8
	k8s.io/apimachinery => k8s.io/apimachinery v0.18.8
	k8s.io/apiserver => k8s.io/apiserver v0.18.8
	k8s.io/client-go => k8s.io/client-go v0.18.8
	k8s.io/code-generator => k8s.io/code-generator v0.18.8
)
