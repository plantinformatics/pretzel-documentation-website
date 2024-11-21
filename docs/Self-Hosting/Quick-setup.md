# Quick setup

!!! warning

    The following sections are for setting up your own instance of pretzel to load in non-public data for use in your own organisation.
    For the latest public datasets please access them at [agg.plantinformatics.io](https://agg.plantinformatics.io/)

The following set up will be predominantly for linux users using docker. A windows version will be coming soon.

## Required Software
Please make sure [docker](https://www.docker.com/products/docker-desktop/) is installed before you proceed any further.


## Creating the configuration files

Change to the directory where you want to place the relevant config files.
An example is shown below

``` bash 
mkdir pretzel-docker-config && cd pretzel-docker-config && touch docker-compose.prod.yaml && touch pretzel.compose.prod.env
```

Using your text editor of choice create an environment file defining the configuration of directories, names and ports for the servers.

Sample files are shown below, latest version can be found on our [github](https://github.com/plantinformatics/pretzel/tree/develop/doc/adminGuides/)

``` env title="pretzel.compose.prod.env"
# Prod

# DATA_DIR= # directory for mongoDb database
# mntData= # directory for Blast and VCF databases
# landingPage= # directory containing index.html and web page content to display on the home page before the user logs in.
# This dir maps to /app/node_modules/flat-cache/.cache and contains 1 file : resultsCache
# resultsCacheDir=/home/ec2-user/home/resultsCache/prod
#PORT=3010

# Not used ?
# INSTANCE=agg
DB_NAME=pretzel
# API_HOST=agg.plantinformatics.io
API_PORT_PROXY=80
API_PORT_EXT=3010
hostIp=blastserver
# Flask port is now internal to the compose network, so use fixed (default) 4000; 
# no need to configure via FLASK_PORT / BLASTSERVER_PORT.
BLASTSERVER_PORT=4000
# The value of API_PORT_PROXY is not (currently) a port, it is just defined or undefined.
MONGO_DEFAULT_PORT=27017
EMAIL_VERIFY=ADMIN
# EMAIL_ADMIN=user-email-admin@example.com
# EMAIL_HOST=email-smtp.<region>.amazonaws.com
EMAIL_PORT=25
# EMAIL_PASS=...
# EMAIL_USER=...
# EMAIL_FROM=admin@example.com
# This enables using Feature.value_0 as an index field; all datbases now contain this field and this option can be made to default to true (1).
use_value_0=1
# If a handsOnTableLicenseKey is not provided, a prompt message will be displayed in the GUI. Insert your license here; Hands On Table allows non-commercial and evaluation use.
# handsOnTableLicenseKey=non-commercial-and-evaluation

```

``` yaml title="pretzel.compose.prod.yaml"
# NOTE refer to the accompanying '.env' file in this folder to access
# environment variables which are passed through to docker-compose.yaml
# at run time

# NOTE this has been updated to the docker compose V2 format, this will not work with docker-compose

name: pretzel-prod

networks:
  pretzel-prod:
    driver: bridge

services:
  database: # mongo database
    # MongoDb up to v5 has been tested OK
    image: mongo:4.2.24
#    environment:
#      - "MONGO_INITDB_ROOT_USERNAME=${DB_USER}"
#      - "MONGO_INITDB_ROOT_PASSWORD=${DB_PASS}"
    volumes:
      - ${DATA_DIR}:/data/db
    expose:
      - "${MONGO_DEFAULT_PORT}"
    networks:
      - pretzel-prod

  api: # node environment
    depends_on:
      - database
      # Could have depends_on: blastserver, but it is not a critical dependency
    build:
      context: .
      dockerfile: ./scripts/Dockerfile
    image: plantinformaticscollaboration/pretzel:v3.1.0
    command: node /app/lb3app/server/server.js
    environment:
      - "API_HOST=${API_HOST}"
      - "API_PORT_EXT=${API_PORT_EXT}"
      - "API_PORT_PROXY=${API_PORT_PROXY}"
      - "hostIp=${hostIp}"
      # Flask port is now internal to the compose network, so use fixed (default) 4000; 
      # no need to configure via FLASK_PORT / BLASTSERVER_PORT.
      - "FLASK_PORT=4000"       # ${BLASTSERVER_PORT}"
      - "DB_HOST=database"
      - "DB_PORT=${MONGO_DEFAULT_PORT}"
      - "DB_NAME=${DB_NAME}"
      - "DB_USER=${DB_USER}"
      - "DB_PASS=${DB_PASS}"
      - "EMAIL_HOST=${EMAIL_HOST}"
      - "EMAIL_PORT=${EMAIL_PORT}"
      - "EMAIL_USER=${EMAIL_USER}"
      - "EMAIL_PASS=${EMAIL_PASS}"
      - "EMAIL_FROM=${EMAIL_FROM}"
      - "EMAIL_VERIFY=${EMAIL_VERIFY}"
      - "EMAIL_ADMIN=${EMAIL_ADMIN}"
      - "mntData=${mntData}"
      - "handsOnTableLicenseKey=${handsOnTableLicenseKey}"
    volumes:
      # landingPage
      - $landingPage:/app/client/landingPageContent
      # blastVolume
      - $mntData/blast:$mntData/blast
      # vcfVolume
      - $mntData/vcf:$mntData/vcf
      - ${resultsCacheDir}:/app/node_modules/flat-cache/.cache

    ports:
      # match ext / int ports for loopback
      - "${API_PORT_EXT}:${API_PORT_EXT}"
    networks:
      - pretzel-prod

  blastserver: # Python Flask blastn server, based on a python image, used for DNA Sequence Search
    image: plantinformaticscollaboration/blastserver:latest
    environment:
      - "FLASK_PORT=${BLASTSERVER_PORT}"
    volumes:
      # mntData=/mnt/data_blast
      - $mntData/blast:/mnt/data/blast
      # Enables scripts/blastn_cont.bash to run blastn via docker
      - /usr/bin/docker:/usr/bin/docker
      - /var/run/docker.sock:/var/run/docker.sock
    expose:
      - "4000"
    networks:
      - pretzel-prod
```

### Create Data directories

Create directories for the Pretzel MongoDb database, Blast database, and results cache, as defined by the paths in the environment file.

It is recommended to use the following directory structure

```
DATA_DIR= mongodb/db0 # mongoDB directory
mntData= data_blast# blastBD and VCF file directroy
```


### Install and start Pretzel

```
docker compose --file docker-compose.prod.yaml --env-file pretzel.compose.prod.env up -d
```

If this has been successfully set up you should see this screen.

<img width="1446" alt="Screenshot 2024-10-09 at 10 57 16 am" src="https://github.com/user-attachments/assets/799ac851-ed09-4a33-bd57-54f2e410d564">
 
