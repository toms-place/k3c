#!/bin/sh

set -e

# this is needed for cilium to work inside docker
mount bpffs -t bpf /sys/fs/bpf
mount --make-shared /sys/fs/bpf
mount --make-shared /sys/fs/cgroup

exec "$@"
