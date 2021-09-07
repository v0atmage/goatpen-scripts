#!/bin/sh

#cd /lemmy
docker-compose down
docker system prune -a -f
rm -rf volumes
