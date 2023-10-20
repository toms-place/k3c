ARG IMAGE=rancher/k3s:latest
FROM $IMAGE

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "/bin/sh", "entrypoint.sh" ]
