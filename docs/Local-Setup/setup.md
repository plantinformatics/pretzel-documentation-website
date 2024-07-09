# Local setup

The follow sections are only relevant if you wish to set up your own instance of pretzel.

---

## Combined setup of Pretzel with supporting Database server and Blast server

This section is for running mongo + pretzel + blastserver using docker-componse on new instance.

If you want to run Pretzel without setting up the Blast server, which is used for DNA Sequence search, then you may use the following section, [Quick Start (using docker)](#quick-start-using-docker), which uses docker run for each of the servers : Pretzel and Mongo database.

### Configuration

Change to the directory where you want to place the environment file and docker-compose.combined.yaml

Get the [docker-compose.combined.yaml](https://github.com/plantinformatics/pretzel/blob/feature/workingGroup3_383_GenotypeSearch/lb4app/lb3app/scripts/docker-compose/docker-compose.combined.yaml) file.


Create an environment file defining the configuration of directories, names and ports for the servers.

```
cat > pretzel.compose.env <<EOF
DATA_DIR=/mnt/mongodb/db0
mntData=/mnt/data

#PORT=3010

DB_NAME=admin
API_HOST=localhost
API_PORT_EXT=3010
# The value of API_PORT_PROXY is not (currently) a port, it is just defined or undefined.
API_PORT_PROXY=80
MONGO_DEFAULT_PORT=27017
EMAIL_VERIFY=ADMIN
EMAIL_ADMIN=...
EMAIL_HOST=...
EMAIL_PORT=25
EMAIL_USER=...
EMAIL_PASS=...
EMAIL_FROM=...
use_value_0=1
germinate_password=...
EOF

```

### Create Data directories

Create directories for the Pretzel MongoDb database, Blast database, and results cache, as defined by the paths in the environment file.


### Install and start Pretzel

```
docker-compose --file docker-compose.combined.yaml --env-file pretzel.compose.env up
```

---


## Quick Start (using docker)

For a quick start without installing any of the dependencies you will need docker engine running on your system.

### Environment variables passed to Docker 

As noted below in [Enable Use Of HandsOnTable](#enable-use-of-handsontable),
the License Key for HandsOnTable can be passed in to the server via this environment variable : $handsOnTableLicenseKey

This can be passed via the docker run command via -e, e.g.
for a non-commercial project, e.g. research, it is permitted to define :
`docker run --name pretzel -e "handsOnTableLicenseKey=non-commercial-and-evaluation" ...`

### Docker on linux

```
mkdir -p ~/mongodata \
 && docker run --name mongo --detach --volume ~/mongodata:/data/db --net=host mongo:5.0 \
 && until $(curl --silent --output /dev/null localhost:27017 || \
    [ $(docker inspect -f '{{.State.Running}}' mongo) = "false" ]); do printf '.'; sleep 1; done \
 && docker run --name pretzel --detach --net=host plantinformaticscollaboration/pretzel:stable  \
 && until $(curl --silent --output /dev/null localhost:3000 || \
    [ $(docker inspect -f '{{.State.Running}}' pretzel) = "false" ] ); do printf '.'; sleep 1; done \
 && docker logs pretzel
```

mongoDb versions 4 and 5 have been tested with Pretzel.

### Docker on windows

```
md mongodata
docker run --name mongo --detach --publish 27017:27017 --volume mongodata:/data/db mongo
docker run --name pretzel -e "DB_HOST=host.docker.internal" --publish 3000:3000 plantinformaticscollaboration/pretzel:stable
```

### Checking things are running

If everything has worked so far, you should be able to open [http://localhost:3000](http://localhost:3000) in a browser and see a landing page.
You can create a user by signing up, then logging in with these details (by default, the user is created immediately without any extra verification).

### Loading data

Once your pretzel instance is running you may want to populate it with some data.


### Using pretzel web interface

You can start by downloading and decompressing datasets (3 genetic maps) we have made available [here](https://github.com/plantinformatics/pretzel/releases/download/v1.1.5/public_maps.zip).
In your instance of Pretzel, navigate to the Upload tab on the left panel, select JSON and browse to the location where you extracted the content of the downloaded file. Select and submit each of the three JSON files in turn. Once submitted, the maps should be visible in the Explorer tab.