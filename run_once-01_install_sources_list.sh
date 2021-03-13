#!/usr/bin/env bash
set -e

# Install Google Cloud SDK
# https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu?hl=fr
#
echo "deb [signed-by=/etc/apt/trusted.gpg.d/google-cloud-sdk.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
curl -sS https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /etc/apt/trusted.gpg.d/google-cloud-sdk.gpg >/dev/null
