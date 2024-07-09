# Local setup

The follow sections are only relevant if you wish to set up your own instance of pretzel.

---

## Combined setup of Pretzel with supporting Database server and Blast server

This section is for running mongo + pretzel + blastserver using docker-componse on new instance.

If you want to run Pretzel without setting up the Blast server, which is used for DNA Sequence search, then you may use the following section, Quick Start (using docker), which uses docker run for each of the servers : Pretzel and Mongo database.

### Configuration

Change to the directory where you want to install the Pretzel source working directory.
```
cd
git clone  https://github.com/plantinformatics/pretzel.git
```

Create an environment file defining the configuration of directories, names and ports for the servers.
This is used by pretzel/lb4app/lb3app/scripts/docker-compose/combined.yaml

```
envFile=~/pretzel.compose.env

cat > $envFile <<EOF
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


Create a directory for the resultsCache file.
```
mkdir -p ~/log/resultsCache
# If you have an existing cache file, copy the directory, e.g. :
cp -pr pretzel/lb4app/node_modules/flat-cache/.cache ~/log/resultsCache
```

Configuration for building the blastserver image - not required if using a prepared image from local Docker daemon or from dockerhub.
```
mkdir -p ~/log/build/docker
logDate=$(date +%Y%b%d)
export DOCKER_BUILDKIT=1
```

```
cd ~/pretzel
# I haven't yet pushed blastserver image to dockerhub; it can be built locally :
docker build -t blastserver -f lb4app/lb3app/scripts/docker-compose/blastServer.Dockerfile . >&  ~/log/build/docker/blastserver.$logDate
# Configure .yaml to use the current version of pretzel, or build :
# build pretzel container as usual (without  --build-arg ROOT_URL=/pretzelUpdate)
docker build  -t pretzel . >& ~/log/build/docker/pretzel.${logDate}
```

### Install and start Pretzel

Define a bash function which factors the docker-compose up and down commands, making them briefer.
```
unset API_PORT_EXT
function dcCombined() {
  docker-compose --file ~/pretzel/lb4app/lb3app/scripts/docker-compose/docker-compose.combined.yaml --env-file $envFile $*
}
```

# up
```
dcCombined up >& ~/log/docker-compose.combined &
tail ~/log/docker-compose.combined
```

# down
```
dcCombined down
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