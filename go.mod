module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.2.0
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.2
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/otiai10/copy v1.2.0 // indirect
	github.com/stretchr/testify v1.6.0 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.opencensus.io v0.22.5-0.20200716030834-3456e1d174b2 // indirect
	go.uber.org/zap v1.15.0
	golang.org/x/net v0.0.0-20200904194848-62affa334b73
	k8s.io/api v0.18.8
	k8s.io/apiextensions-apiserver v0.18.8 // indirect
	k8s.io/apimachinery v0.18.8
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
<<<<<<< HEAD
	knative.dev/eventing v0.18.1-0.20201014123930-656ab81f8708
	knative.dev/pkg v0.0.0-20201014022930-ad2e1b82ee6a
	knative.dev/serving v0.17.1-0.20200911183800-3e7b71d67f00
=======
	knative.dev/eventing v0.18.1-0.20201014183131-7ee674342f3d
	knative.dev/pkg v0.0.0-20201014184531-9e655c6b02f6
>>>>>>> unpin and drop serving dep
	knative.dev/test-infra v0.0.0-20201014021030-ae3984a33f82
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
