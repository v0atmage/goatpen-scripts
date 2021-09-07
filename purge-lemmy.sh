#!/bin/sh

## WARNING THIS WILL DESTROY EVERYTHING INCLUDING THE DATABASE!

CWD=/lemmy
cd $CWD

docker-compose down
docker system prune -a -f
rm -rf volumes
