#!/usr/bin/env bash
set -e

if [ $(id -u) -ne 0 ]; then
	sudo $0
else

packages=( \
  linux-headers-$(uname -r) \
  $(nvidia-detector) \
)

LOCKFILE=/var/lib/dpkg/lock-frontend
WAITTIME=600

while ! flock -w $WAITTIME -n $LOCKFILE apt-get install -y ${packages[@]}; do
  echo "Waiting for $LOCKFILE..." >/dev/stderr
done

fi
