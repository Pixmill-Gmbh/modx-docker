#!/bin/bash

source "./.env"
NAME=${COMPOSE_PROJECT_NAME}-php-fpm

docker exec -ti $(docker ps --filter name=$NAME -q) bash -c "gitify backup && gitify extract"