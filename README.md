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

This will install MODX `2.8.4-pl`, default packages and create special `Assets` plugin. 

### How to develop

Open http://127.0.0.1:8080 - you will see the MODX website. 

Your frontend assets are in the `NewProject/assets` directory, handled by Webpack in development mode. 
When you change files, frontend will rebuild assets and reload. 

If you want to change something in MODX, feel free to go to the `/manager` using login `admin` and password `adminadmin`.

When you finish your work, run 
```
./modx-extract.sh
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