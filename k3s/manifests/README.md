# Manifests

The YAML manifests in this directory are used to automatically deploy the application to a Kubernetes cluster.

## Naming Convention

The naming convention for the manifests is as follows:

`<app-id>-<name>-<kind>.yaml`

Where:
`<app-id>` is the name of the application, e.g. `demo` or `cert-manager`
`<name>` is the name of the resource (e.g. `app` or `db`) or `helm` if the resource is a helm chart
`<kind>` is the Kubernetes resource kind (e.g. `deployment` or `service`) or `bundle` if multiple resources are bundled together
