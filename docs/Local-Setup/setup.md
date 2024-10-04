# Local setup

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

Sample files are shown below

``` env title="pretzel.compose.prod.env"
# prod

DATA_DIR= # mongoDB directory
mntData= # blastBD and VCF file directroy
landingPage= # optional accepts basic HTML and CSS

DB_NAME=admin # used to specify mongo db name
API_HOST= # URL for pretzel if public, used for email verification
API_PORT_PROXY=80 # used for email verification
API_PORT_EXT=3000
BLASTSERVER_PORT=4000
# The value of API_PORT_PROXY is not (currently) a port, it is just defined or undefined.
MONGO_DEFAULT_PORT=27017
EMAIL_VERIFY=NONE # can be NONE (no verification) or ADMIN 
EMAIL_ADMIN= # used if email verification is used
EMAIL_HOST= # used if email verification is used
EMAIL_PORT=25
EMAIL_PASS= # used if email verification is used
EMAIL_USER= # used if email verification is used
EMAIL_FROM= # used if email verification is used
use_value_0=1
# in future use_value_0 will always be true (1) and this variable will be deprecated. Indicates that the database Feautures contain .value_0 which is equal to .value[0] and is used to make location-based search query faster.
germinate_password= # optional
handsOnTableLicenseKey=non-commercial-and-evaluation

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
    image: 9b5c4a4fdcb5 # 4.2.24.  library/mongo-4.2.24 # base image off dockerhub
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
    image: plantinformaticscollaboration/pretzel:v2.17.7b # specifying name for built container
    command: node /app/lb3app/server/server.js
    environment:
      - "API_HOST=${API_HOST}"
      - "API_PORT_EXT=${API_PORT_EXT}"
      - "API_PORT_PROXY=${API_PORT_PROXY}"
      - "hostIp=${hostIp}"
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
      # - $landingPage:/app/client/landingPageContent
      # blastVolume
      - $mntData/blast:$mntData/blast
      # vcfVolume
      - $mntData/vcf:$mntData/vcf
    ports:
      # match ext / int ports for loopback
      - "${API_PORT_EXT}:${API_PORT_EXT}"
    networks:
      - pretzel-prod

  blastserver: # Python Flask blastn server, used for DNA Sequence Search
    image: plantinformaticscollaboration/blastserver:latest # based on python
    environment:
      - "FLASK_PORT=${BLASTSERVER_PORT}"
    volumes:
      # mntData=/mnt/data_blast
      - $mntData/blast:$mntData/blast
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