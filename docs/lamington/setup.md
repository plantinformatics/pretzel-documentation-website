# Setup

## What is Lamington?
This application provides a user-friendly GUI wrapper for Core Hunter, enabling you to:

- Create core diversity sets from genetic population data
- Filter genotypes and samples
- Visualize data through PCA plots
- Detect genetic outliers
- Generate optimized core subsets

The tool streamlines the process of genetic diversity analysis through an intuitive interface.

![image](https://github.com/user-attachments/assets/885dd15e-2b0d-4656-b51b-f6c94e1d5f4c)

## Prerequisites

- Any machine with Docker installed. See [Docker](https://docs.docker.com/get-docker/) for more information.

- Your own terminal application

## Setup

In your terminal, run the following command:

```bash
docker run -it -p 127.0.0.1:3838:3838 plantinformaticscollaboration/lamington
```

!!! Note
    When this command is run for the first time, it will take a few minutes to download the docker image from dockerhub.

When the application is successfully started, you will see the following output in the terminal:

```bash title="Output"
R version 4.3.1 (2023-06-16) -- "Beagle Scouts"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> shiny::runApp('/root/app',host = '0.0.0.0', port=3838)
Loading required package: shiny
Loading required package: gdsfmt
SNPRelate -- supported by Streaming SIMD Extensions 2 (SSE2)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union


Attaching package: ‘DT’

The following objects are masked from ‘package:shiny’:

    dataTableOutput, renderDataTable


Listening on http://0.0.0.0:3838
Loading required namespace: plotly
Failed with error:  ‘there is no package called ‘plotly’’
```

## Accessing the Lamington server

Open your web browser and navigate to `http://localhost:3838`.

## Stopping the Lamington server

To stop the Lamington server, press `Ctrl+C` in the terminal.

## Additional run options

The following options can be used to run the application:

Subsituting `-it` with `-d` will run the application in detached mode. Meaning that the application will run in the background and you will not be able to be stopped by pressing `Ctrl+C`.

Additionally if you want to run the application with mounted volumes, you can use the following command:

```bash
docker run -it -p 127.0.0.1:3838:3838 -v '/path/to/your/data/VCFs:/root/VCFs' -v '/path/to/your/data/GDS:/root/GDS' plantinformaticscollaboration/lamington
```

This will mount the `/path/to/your/data/VCFs` directory to the `/root/VCFs` directory in the container and the `/path/to/your/data/GDS` directory to the `/root/GDS` directory in the container.
