# AIC 2023 - Group 7 - Topic 4

Repository for the AIC 2023 - Group 7 - Topic 4 project.

## Initial Development Environment Setup

```zsh
echo "K3S_TOKEN=${RANDOM}${RANDOM}${RANDOM}" > .env
echo "K3S_VERSION=v1.28.2-k3s1" >> .env
export KUBECONFIG=$(pwd)/kubeconfig.yaml
```

## Start Development Environment with Docker Compose

This creates a local Kubernetes cluster with a single master node and multiple worker nodes.
The cluster is created using [k3s](https://k3s.io/) and [cilium](https://cilium.io/) as CNI.

```zsh
docker-compose up -d
```

## Purge Development Environment with Docker Compose

```zsh
docker-compose down --remove-orphans --volumes
```
