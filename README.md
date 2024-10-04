# Setup 

## Local setup

Please make sure docker is installed on your machine before running the following
[https://www.docker.com/](https://www.docker.com/)

Run the following in the directory where you have pulled the repo. This will run an interactive preview while you make changes

    docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material

This can be accessed locally at
    
    http://0.0.0.0:8000/

## Deployment
Below is a version where process is started in the background

    docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
