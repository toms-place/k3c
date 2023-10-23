# AIC 2023 - Group 7 - Topic 4

Repository for the AIC 2023 - Group 7 - Topic 4 project.

I started by creating a local Kubernetes cluster with a single control-plane node and multiple worker nodes. Kubernetes is useful for dynamically provisioning containers and manage network configurations for our assignment. The cluster is created using [k3s](https://k3s.io/) and [cilium](https://cilium.io/) as [CNI](https://www.cni.dev/). I would aim to use the same setup for the final deployment.

The cluster and all its components are created using a simple `docker-compose up -d`.

## Initial Development Environment Setup

```bash
echo "K3S_TOKEN=${RANDOM}${RANDOM}${RANDOM}" > .env
echo "K3S_VERSION=v1.28.2-k3s1" >> .env
export KUBECONFIG=$(pwd)/kubeconfig.yaml
```

## Start Project Environment with Docker Compose and access the Kubernetes Dashboard

This creates a local Kubernetes cluster with a single master node and multiple worker nodes.
The cluster is created using [k3s](https://k3s.io/) and [cilium](https://cilium.io/) as CNI.

```bash
# This also works without the Development Setup step
docker-compose up -d
```

Open the [DASHBOARD](http://dash.localhost) in chrome and skip authentication (already configured)

### Use kubectl to Interact with the Cluster

see: [kubectl reference](https://kubernetes.io/docs/reference/kubectl/)

```bash
export KUBECONFIG=$(pwd)/kubeconfig.yaml
kubectl get all --all-namespaces
```

## Purge Project Environment with Docker Compose

```bash
docker-compose down --remove-orphans --volumes
```


## Configuration of the cluster

The cluster is configured using static deployments mounted via docker from the [`./k3s/manifests`](./k3s/manifests) directory.

See: [k3s manifests docs](https://docs.k3s.io/installation/packaged-components)
