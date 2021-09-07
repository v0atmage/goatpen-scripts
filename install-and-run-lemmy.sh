#!/bin/sh

VERSION='v0.8.10'

mkdir lemmy
cd lemmy/
# Set correct permissions for pictrs folder
wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/iframely.config.local.js
wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/lemmy.hjson
wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/prod/docker-compose.yml
mkdir -p volumes/pictrs
sudo chown -R 991:991 volumes/pictrs
docker-compose -f docker-compose-$VERSION.yml up -d
