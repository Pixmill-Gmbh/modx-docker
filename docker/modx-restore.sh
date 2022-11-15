#!/bin/bash

source "./.env"
NAME=${COMPOSE_PROJECT_NAME}-php-fpm

# Restore database
# docker exec -ti $(docker ps --filter name=$NAME -q) bash -c 'gitify restore $(ls _backup | sort -n | tail -n 1)'

# Build elements and resources
docker exec -ti $(docker ps --filter name=$NAME -q) bash -c 'rm -rf ./core/cache && gitify build'