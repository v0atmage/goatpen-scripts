#!/bin/sh

VERSION='cat VERSION`

CWD=/lemmy

# Create app folder
mkdir -p $CWD
cd $CWD

wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/iframely.config.local.js
wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/lemmy.hjson
wget https://raw.githubusercontent.com/LemmyNet/lemmy/$VERSION/docker/prod/docker-compose.yml


# Create pictrs folder
mkdir -p volumes/pictrs
# Set correct permissions for pictrs folder
sudo chown -R 991:991 volumes/pictrs

# Start the app
docker-compose -f docker-compose-$VERSION.yml up -d
