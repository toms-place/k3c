# Manifests

The YAML manifests in this directory are used to automatically deploy the application to a Kubernetes cluster.

## Naming Convention

The naming convention for the manifests is as follows:

<id>-<name>-<kind>.yaml

Where:
`<id>` is the name of the application, e.g. `k8s-demo`
`<name>` is the name of the resource, e.g. `app` or `db`
`<kind>` is the Kubernetes resource kind, e.g. `deployment` or `service`  
