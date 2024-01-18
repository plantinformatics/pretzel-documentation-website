# About Pretzel <!-- omit in toc -->
A Loopback/Ember/D3 framework to display and interactively navigate complex datasets.

<img src="https://user-images.githubusercontent.com/20571319/116690793-4129a380-a9fd-11eb-85ed-6b9d91f51458.png" align="center">

Currently (2020-) funded and developed by Agriculture Victoria, Department of Jobs, Precincts and Regions (DJPR), Victoria, Australia.

Previously (2016-2020) funded by the Grains Research Development Corporation (GRDC) and co-developed by Agriculture Victoria and CSIRO, Canberra, Australia.




## Axis re-ordering <!-- omit in toc -->

<img src="https://user-images.githubusercontent.com/20571319/36240208-2781bdde-1264-11e8-9b25-4393021935e3.gif" align="center">

## Axis flipping <!-- omit in toc -->

<img src="https://user-images.githubusercontent.com/20571319/36240360-3b5db6fe-1265-11e8-9675-97b8bc9c8f07.gif" align="center">

## Zoom <!-- omit in toc -->

<img src="https://user-images.githubusercontent.com/20571319/36240487-2a2b5840-1266-11e8-9d71-fe4d275c4adb.gif" align="center">

## Axis stacking <!-- omit in toc -->

<img src="https://user-images.githubusercontent.com/20571319/36240958-80b982b2-1267-11e8-95b0-f59b999ead29.gif" align="center">

NOTE: References for the genetic maps shown in the alignments on this page are available at the bottom of this page.

## Genotype table : Merge Rows, additional data columns <!-- omit in toc -->

<img alt="Screenshot from 2023-03-20 12-09-22" src="https://user-images.githubusercontent.com/2305340/226578361-3534d5d4-bd83-49b4-b941-786f0ac7f9d1.png" align="center">


## Genotype table : small cells <!-- omit in toc -->

<img alt="Screenshot from 2023-03-10 23-10-33" src="https://user-images.githubusercontent.com/2305340/226578603-fc1cae29-c777-424c-b343-61134a37a3b9.png" align="center">


## Compound Axis.  Presentation controls. <!-- omit in toc -->

<img alt="Screenshot from 2023-02-02 14-19-59" src="https://user-images.githubusercontent.com/2305340/226580188-aceff45a-036d-43f3-b362-543e3b14cfd8.png" align="center">

## Genotype table : nucleotide view <!-- omit in toc -->

<img alt="Screenshot from 2022-10-10 16-07-49" src="https://user-images.githubusercontent.com/2305340/226576427-58767b40-add3-43e8-9b46-39f04fd287fc.png" align="center">

## Feature Search <!-- omit in toc -->

<img alt="Screenshot from 2022-09-27 17-25-51" src="https://user-images.githubusercontent.com/2305340/226577416-869c28f1-21f9-4259-8eac-f97ab31348fd.png" align="center">

## Synteny Block display <!-- omit in toc -->

<img alt="Pretzel-LogoIdea-03" src="https://user-images.githubusercontent.com/2305340/226578048-0abdaf6d-6967-44d3-9a30-ed19b1b7b595.PNG" align="center">



# Quick start (using docker)

For a quick start without installing any of the dependencies you will need docker engine running on your system.

## Environment variables passed to Docker 

As noted below in [Enable Use Of HandsOnTable](#enable-use-of-handsontable),
the License Key for HandsOnTable can be passed in to the server via this environment variable : $handsOnTableLicenseKey

This can be passed via the docker run command via -e, e.g.
for a non-commercial project, e.g. research, it is permitted to define :
`docker run --name pretzel -e "handsOnTableLicenseKey=non-commercial-and-evaluation" ...`

