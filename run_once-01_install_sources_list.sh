#!/usr/bin/env bash
set -e

# Install Google Cloud SDK
# https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu?hl=fr
#
echo "deb [signed-by=/etc/apt/trusted.gpg.d/google-cloud-sdk.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
curl -sS https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /etc/apt/trusted.gpg.d/google-cloud-sdk.gpg >/dev/null

# Install PostgreSQL APT sources
# https://www.postgresql.org/download/linux/debian/
#
echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc >/dev/null

# Install packages
sudo apt-get update
sudo apt-get install --yes \
  jq \
  google-cloud-sdk \
  postgresql-client
