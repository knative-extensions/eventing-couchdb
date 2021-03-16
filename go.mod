module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.2.0
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/fsnotify/fsnotify v1.4.9 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.5
	github.com/googleapis/gnostic v0.4.0 // indirect
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/json-iterator/go v1.1.10 // indirect
	github.com/otiai10/copy v1.2.0 // indirect
	github.com/prometheus/procfs v0.0.11 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.uber.org/zap v1.16.0
	golang.org/x/net v0.0.0-20201209123823-ac852fbbde11
	k8s.io/api v0.19.7
	k8s.io/apimachinery v0.19.7
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
	k8s.io/kube-openapi v0.0.0-20200410145947-bcb3869e6f29 // indirect
	knative.dev/eventing v0.21.1-0.20210315222641-248cd1b3cc69
	knative.dev/hack v0.0.0-20210309141825-9b73a256fd9a
	knative.dev/pkg v0.0.0-20210315160101-6a33a1ab29ac
	sigs.k8s.io/structured-merge-diff/v3 v3.0.1-0.20200706213357-43c19bbb7fba // indirect
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
