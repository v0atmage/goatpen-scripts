#!/bin/bash

VERSION='0.12.0-no-slur-check'

docker kill lemmy_lemmy_1
docker kill lemmy_lemmy-ui_1
docker kill lemmy_pictrs_1

docker-compose -f docker-compose-$VERSION.yml up -d
