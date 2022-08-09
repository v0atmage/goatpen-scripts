#!/bin/bash

CWD=/lemmy
cd $CWD

VERSION='cat VERSION`

# Kill lemmy
docker kill lemmy_lemmy_1

# Kill the ui
docker kill lemmy_lemmy-ui_1

# Kill the picture db
docker kill lemmy_pictrs_1

# Kill iframely (permanently- it's unused in 0.12+)
docker kill lemmy_iframely_1

# Start the new version which will trigger an upgrade on the db
docker-compose -f docker-compose-$VERSION.yml up -d
