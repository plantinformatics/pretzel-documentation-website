# Extended features

!!! note

    The vast majority of the configuration of Pretzel is done via the docker compose yaml and environment files.
    As such a lot of the below points reference these files located in our [github](https://github.com/plantinformatics/pretzel/tree/develop/doc/adminGuides/) repo.

## Modifying the Pretzel API

### Deploying older Pretzel API versions

A complete list of released pretzel images can be found on our [dockerhub](https://hub.docker.com/r/plantinformaticscollaboration/pretzel/tags) page.

To change versions just edit the `image:` field in the `docker-compose.yaml` file.

``` yaml title="pretzel.compose.prod.yaml"
api: # node environment
...
image: plantinformaticscollaboration/latest # replace latest with the desired version
```
Followed by deploying the new image with the following command:

``` bash title="Deploying the new image"
docker compose --file docker-compose.prod.yaml --env-file pretzel.compose.prod.env up -d
```
### Deploying custom Pretzel API images

If deploying a custom image you will need to build the image from source. See [Building custom Pretzel API images](#building-custom-pretzel-api-images) 

To use the custom image you will need to update the `image:` field in the `docker-compose.yaml` file.

``` yaml title="pretzel.compose.prod.yaml"
api: # node environment
...
image: # Path to the custom image or image tag name
``` 

Followed by deploying the new image with the following command:

``` bash title="Deploying the new image"
docker compose --file docker-compose.prod.yaml --env-file pretzel.compose.prod.env up -d
```
### Building custom Pretzel API images

In the home directory of the cloned repo run the following commands to build the image:

``` bash title="Building the image"
mkdir -p ~/log/build/docker # create the log directory if it doesn't exist
sudo docker build . > ~/log/build/docker/$logDate
```

The image tag name will be displayed in the log file. Use this tag name in the `image:` field in the `docker-compose.yaml` file. As described in [Deploying custom Pretzel API images](#deploying-custom-pretzel-api-images).

---

## Add a custom landingPage 
If a directory is provided, this content is displayed in the Pretzel home page before the user logs in. This only supports static html content.

``` env title="pretzel.compose.prod.env"
landingPage= # directory containing static html content.
``` 

## Enabling/Disabling email verification

Only enable email verification if you have set up an Amazon SES SMTP email address. Otherwise accounts will be created with no means to verify them.

``` env title="pretzel.compose.prod.env"
EMAIL_VERIFY= # ADMIN or NONE
``` 
### Setting up email verification
See [Setting an Amazon SES SMTP email address](https://docs.aws.amazon.com/ses/latest/dg/setting-up.html) for more information and for the values to use for the following variables.

``` env title="pretzel.compose.prod.env"
# EMAIL_ADMIN=user-email-admin@example.com
# EMAIL_HOST=email-smtp.<region>.amazonaws.com
EMAIL_PORT=25
# EMAIL_PASS=...
# EMAIL_USER=...
# EMAIL_FROM=admin@example.com
``` 

## Enable results caching

Added in v3.1.0.

The Pretzel API server will cache results for common requests, enabling them to be served more quickly and efficiently.  This directory will be created within the Pretzel API server container, or if it is configured as a shared volume, then the resultsCache will be stored in the directory passed in.  The benefit of this is that when the container is re-created, the resultsCache will be preserved.  This is not essential, but will improve performance in particular for histograms where the chromosomes (Blocks) contain 1e5 - 1e7 features.

``` env title="pretzel.compose.prod.env"
    resultsCacheDir= # directory for results cache
``` 
