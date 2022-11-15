#!/bin/bash

source "./.env"
IMAGE=node:${NODE_VERSION}-alpine
TMP=${COMPOSE_PROJECT_NAME}-production-build
NAME=${COMPOSE_PROJECT_NAME}-php-fpm
ASSETS=$(pwd | sed 's#/docker$#/assets#')
MODX=$(pwd | sed 's#/docker$#/modx#')
CON_ID=$(docker ps --filter name=$NAME -q)

rm -rf ../dist

if [ ! $CON_ID ]; then
  docker-compose -p ${COMPOSE_PROJECT_NAME} start mariadb php-fpm
  sleep 5
fi

./modx-backup.sh

if [ ! $CON_ID ]; then
  docker-compose -p ${COMPOSE_PROJECT_NAME} stop mariadb php-fpm
fi

mkdir -p ../dist/assets/app
# mkdir -p ../dist/core/components/app
# cp -r ../core/* ../dist/core/components/app/
cp -r ../modx/_data ../dist/
cp -r ../modx/_backup ../dist/
cp -r ../modx/.gitify ../dist/

docker run -it --rm --name $TMP --volume $ASSETS:/assets --volume $MODX:/modx --workdir /assets $IMAGE sh -c "yarn && yarn build"
cp -r ../modx/assets/app ../dist/assets/
# cp ../core/connector.php ../dist/assets/app/
