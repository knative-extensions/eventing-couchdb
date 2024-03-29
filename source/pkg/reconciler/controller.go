/*
Copyright 2019 The Knative Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package reconciler

import (
	"context"
	"os"

	"k8s.io/client-go/kubernetes/scheme"
	"k8s.io/client-go/tools/cache"
	"knative.dev/eventing-couchdb/source/pkg/apis/sources/v1alpha1"
	kubeclient "knative.dev/pkg/client/injection/kube/client"
	deploymentinformer "knative.dev/pkg/client/injection/kube/informers/apps/v1/deployment"
	"knative.dev/pkg/configmap"
	"knative.dev/pkg/controller"
	"knative.dev/pkg/logging"
	"knative.dev/pkg/resolver"

	sourcesv1alpha1 "knative.dev/eventing-couchdb/source/pkg/apis/sources/v1alpha1"
	couchdbinformer "knative.dev/eventing-couchdb/source/pkg/client/injection/informers/sources/v1alpha1/couchdbsource"
	cdbreconciler "knative.dev/eventing-couchdb/source/pkg/client/injection/reconciler/sources/v1alpha1/couchdbsource"
)

const (
	// ReconcilerName is the name of the reconciler
	ReconcilerName = "CouchDbSource"
)

func init() {
	sourcesv1alpha1.AddToScheme(scheme.Scheme)
}

// NewController initializes the controller and is called by the generated code
// Registers event handlers to enqueue events
func NewController(
	ctx context.Context,
	cmw configmap.Watcher,
) *controller.Impl {
	deploymentInformer := deploymentinformer.Get(ctx)
	couchdbSourceInformer := couchdbinformer.Get(ctx)

	raImage, defined := os.LookupEnv(raImageEnvVar)
	if !defined {
		logging.FromContext(ctx).Errorf("required environment variable %q not defined", raImageEnvVar)
		return nil
	}

	r := &Reconciler{
		receiveAdapterImage: raImage,
		kubeClientSet:       kubeclient.Get(ctx),
		deploymentLister:    deploymentInformer.Lister(),
	}
	impl := cdbreconciler.NewImpl(ctx, r)
	r.sinkResolver = resolver.NewURIResolverFromTracker(ctx, impl.Tracker)

	couchdbSourceInformer.Informer().AddEventHandler(controller.HandleAll(impl.Enqueue))

	deploymentInformer.Informer().AddEventHandler(cache.FilteringResourceEventHandler{
		FilterFunc: controller.FilterController(&v1alpha1.CouchDbSource{}),
		Handler:    controller.HandleAll(impl.EnqueueControllerOf),
	})

	return impl
}
