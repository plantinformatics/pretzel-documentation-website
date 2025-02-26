# Pretzel Documentation Website

This project is a documentation website for Pretzel, an interactive web application designed for genomics data visualization and analysis. The documentation covers:
Core features of Pretzel for translating genomics outputs into research and breeding insights

- Self-hosting instructions for setting up private Pretzel instances
- User stories demonstrating practical applications like identifying virus-resistant plant genetic resources and analyzing wheat yield QTLs
- Documentation for Lamington, a related tool that provides a GUI wrapper for Core Hunter to create genetic diversity sets

The site is built using MkDocs with the Material theme and is automatically deployed through GitHub Actions workflows to different environments (test and production). The documentation serves both end-users working with public genomics data and organizations wanting to host their own Pretzel instances for private data analysis.

## Local Development

This project uses the docker image of mkdocs-material.

See further instructions regarding the docker image in the [MkDocs Material documentation](https://squidfunk.github.io/mkdocs-material/getting-started/).

Run the following in the directory where you have pulled this repo. This will run an interactive preview while you make changes

    docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material

This can be accessed locally at
    
    http://0.0.0.0:8000/

## Deployment
Below is a version where process is started in the background

    docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
