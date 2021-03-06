#!/usr/bin/env bash

set -euxo pipefail

# We have to run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# First destroy the cluster, so we can run this multiple times without doing weird things
./zarf destroy --confirm

# Initialize
./zarf init --confirm --components management --host localhost

# Wait until the docker registry is ready
timeout --foreground 300 bash -c 'while [[ "$(curl -sfSL --retry 15 --retry-connrefused --retry-delay 5 -o /dev/null -w "%{http_code}" "https://localhost/v2/")" != "401" ]]; do sleep 1; done' || false

# Deploy
./zarf package deploy --confirm zarf-package-appliance-demo-doom.tar.zst
