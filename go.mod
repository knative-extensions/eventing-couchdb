module knative.dev/eventing-couchdb

go 1.14

require (
	github.com/cloudevents/sdk-go/v2 v2.2.0
	github.com/flimzy/diff v0.1.7 // indirect
	github.com/go-kivik/couchdb/v3 v3.0.4
	github.com/go-kivik/kivik/v3 v3.0.2
	github.com/go-kivik/kivikmock/v3 v3.0.0
	github.com/google/go-cmp v0.5.1
	github.com/otiai10/copy v1.2.0 // indirect
	github.com/stretchr/testify v1.6.0 // indirect
	gitlab.com/flimzy/testy v0.2.1 // indirect
	go.opencensus.io v0.22.5-0.20200716030834-3456e1d174b2 // indirect
	go.uber.org/zap v1.15.0
	golang.org/x/net v0.0.0-20200822124328-c89045814202
	gopkg.in/yaml.v3 v3.0.0-20200601152816-913338de1bd2 // indirect
	k8s.io/api v0.18.8
	k8s.io/apimachinery v0.18.8
	k8s.io/client-go v11.0.1-0.20190805182717-6502b5e7b1b5+incompatible
	knative.dev/eventing v0.17.1-0.20200911202500-2a052dbdc2fb
	knative.dev/pkg v0.0.0-20200911145400-2d4efecc6bc1
	knative.dev/serving v0.17.1-0.20200911183800-3e7b71d67f00
	knative.dev/test-infra v0.0.0-20200910231400-cfba2288403d
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
