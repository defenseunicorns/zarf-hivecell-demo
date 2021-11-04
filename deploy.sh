#!/usr/bin/env bash

# Download the Zarf releases
curl -fL "https://zarf-public.s3-us-gov-west-1.amazonaws.com/release/v0.12.0/{zarf,zarf-init.tar.zst}" -o "./#1"
