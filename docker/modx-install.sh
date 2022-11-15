#!/bin/bash

source "./.env"
NAME=${COMPOSE_PROJECT_NAME}-php-fpm

docker exec -ti $(docker ps --filter name=$NAME -q) bash -c "gitify modx:download 2.8.4-pl"

docker exec -ti $(docker ps --filter name=$NAME -q) bash -c "php setup/cli-install.php --database_server=mariadb \
  --database=$MARIADB_DATABASE --database_user=$MARIADB_USERNAME --database_password=$MARIADB_PASSWORD \
  --table_prefix=modx_ --language=en --cmsadmin=admin --cmspassword=adminadmin --cmsadminemail=admin@localhost \
  --context_mgr_path=/modx/manager/ --context_mgr_url=/manager/ \
  --context_connectors_path=/modx/connectors/ --context_connectors_url=/connectors/ \
  --context_web_path=/modx/"

./modx-restore.sh

docker exec -ti $(docker ps --filter name=$NAME -q) bash -c "gitify package:install --all"