#!/usr/bin/env bash
set -e

# Install MongoDB Shell
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/
#
curl -fsSL https://www.mongodb.org/static/pgp/server-5.0.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/mongo.gpg
sudo tee /etc/apt/sources.list.d/mongo.list &>/dev/null <<EOF
deb [signed-by=/etc/apt/trusted.gpg.d/mongo.gpg] http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main
EOF

sudo apt-get update
sudo apt-get install --yes \
  mongodb-mongosh \
  mongodb-database-tools
