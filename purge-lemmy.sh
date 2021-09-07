#!/bin/sh

## WARNING THIS WILL DESTROY EVERYTHING INCLUDING THE DATABASE!

CWD=/lemmy
cd $CWD

# Bring down app
docker-compose down

# Destroy docker resources
docker system prune -a -f

# Destroy volumes (pictures and postgres db)
rm -rf volumes
