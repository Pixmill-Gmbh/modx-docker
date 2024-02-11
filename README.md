MODX Docker Project by Pixmill
---

Download project from Gitlab:

```
git clone https://github.com/bezumkin/modx-docker.git ./NewProject
```

### Prepare Docker

If you have no Docker, please install it with
```
brew install docker --cask
brew install docker-compose
```
Then launch Docker desktop application from Applications.

Go to Docker directory:
```
cd ./NewProject/docker
```

Prepare environment variables:
```
cp .env.dist .env
```

Don't forget to specify unique project name in `COMPOSE_PROJECT_NAME` variable.

And run containers:
```
./start.sh
```

First launch will take about 5-10 minutes while docker download images and build containers.

### Install MODX

If you have run this project for the first time, you need to install MODX with default settings. Run
```
./modx-install.sh
```

This will install MODX of the version specified in `MODX_VERSION` variable, default packages and create special `Assets` plugin.

### MODX 2.8.5+ notice

There is a problem in MODX 2.8.5+ versions because of [this PR](https://github.com/modxcms/revolution/pull/16201). 
If you installed this version, you need go to the `core/config/config.inc.php` and change the line `66` to make port checking not so strict.

Before
```
if ($_SERVER['SERVER_PORT'] !== 80) {
```

After
```
if ($_SERVER['SERVER_PORT'] != 80) {
```

This will solve the problem with wrong addresses.

### How to develop

Open http://127.0.0.1:8080 - you will see the MODX website. 

Your frontend assets are in the `NewProject/assets` directory, handled by Webpack in development mode. 
When you change files, frontend will rebuild assets and reload. 

If you want to change something in MODX, feel free to go to the `/manager` using login `admin` and password `adminadmin`.

When you finish your work, run 
```
./modx-backup.sh
```
to save your changes for Git.

Then you can stop your containers by
```
./stop.sh
```

### Production Build

If you want to upload compiled assets to production web-server, run
```
./modx-build.sh
```

This should compile frontend bundle and copy PHP sources with Gitify data files to the root `/dist` directory.

Now you are ready to upload the content of `/dist` directory to the root of MODX website on server.

## Windows notice

Although Docker works well on Windows, you can't run a bash script without installing WSL 2 or other complexities.

That is why you will need to run it directly inside PHP container. Open Docker Desktop, click on context menu of 
`php-fpm` container and use commands from scripts.

For example, here is all-in-one commands to install MODX:
```shell
export $(cat ./.env | sed 's/\r$//')

gitify modx:download 2.8.4-pl

php setup/cli-install.php --database_server=mariadb \
  --database=$MARIADB_DATABASE --database_user=$MARIADB_USERNAME --database_password=$MARIADB_PASSWORD \
  --table_prefix=modx_ --language=en --cmsadmin=admin --cmspassword=adminadmin --cmsadminemail=admin@localhost \
  --context_mgr_path=/modx/manager/ --context_mgr_url=/manager/ \
  --context_connectors_path=/modx/connectors/ --context_connectors_url=/connectors/ \
  --context_web_path=/modx/
  
rm -rf ./core/cache && gitify build

gitify package:install --all
```
