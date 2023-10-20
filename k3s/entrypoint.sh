#!/bin/sh

set -e

mount bpffs -t bpf /sys/fs/bpf
mount --make-shared /sys/fs/bpf
mount --make-shared /sys/fs/cgroup

exec "$@"
