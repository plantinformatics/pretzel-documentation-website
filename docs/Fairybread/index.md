# Fairybread User Guide

## Introduction to Fairybread

Fairybread is an open source web app for exploring Principal Component Analysis (PCA) data for crop germplasm collections. It combines PCA coordinate files with passport metadata sourced from [Genesys](https://www.genesys-pgr.org/) via the [Genolink API](https://genolink.plantinformatics.io/) so researchers can inspect diversity patterns in both a chart and a table.

Use the online version with pre-loaded datasets at [fairybread.plantinformatics.io](https://fairybread.plantinformatics.io).

## Layout

The FairyBread interface comprises

![Genolink main interface](https://github.com/user-attachments/assets/5e164092-373b-49a0-8e45-c6d19bec3319)  

## Data Explorer

The Data Explorer is the main view in FairyBread where datasets can be selected, PCA visualisation displayed and the passport data shown in the table below.

### Selecting the dataset

Multiple species and datasets can be visualised in FairyBread. Click the species drop down menu to select species to view. By default, Wheat is selected after loading FairyBread.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/b62709ed-4220-4d79-ac0c-3ac18726b387" />

### Working with the PCA plot

FairyBread uses Plotly to generate the PCA visualisation. On the right hand side is a panel of buttons which enable zooming in and out, moving around the plot and selecting points.

#### Mouse wheel zoom

The mouse wheel can be used to zoom in and out of the plot. Position the cursor where you want to zoom in/out and scroll up/down.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/9a9065a8-7ad0-46ba-aeb7-615844028b6a" />

#### Zoom in button

Zooms in to the entire plot one step.

<img width="1906" height="1058" alt="image" src="https://github.com/user-attachments/assets/e84a9c79-f85b-4596-a991-78886a334bdc" />

#### Zoom out button

Zooms out of the plot one step.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/05f90602-2fa9-4c20-9177-411d6d96fb9b" />

#### Autoscale and Reset axes

Resets the zoom and position of the view to include all the points currently visible.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/505c0d79-a738-48af-aad3-ae1920077b64" />

#### Zoom (selection) button

Enables zooming in to a rectangular region defined by the user. Click and drag in the plot to define the region to zoom in to.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/25f957b2-fa58-4cae-a6df-e905ecf7015f" />

#### Pan button

Pans within the plot. Click and drag to move the view around.

#### Box select button

Selects all points within the rectangle defined by the user. Click and drag in the plot to define the region of points to select. Double click inside the plot to reset the selection.

#### Lasso select button

Selects all points inside a shape defined manually by the user. Click and drag the mouse around the plot to define the region of points to select. Double click inside the plot to reset the selection.

#### Download plot button

Downloads the current plot as a PNG file.

### Changing the passport field used to colour the plot

### Customising the fields displayed in the passport data table

### Filtering the passport data table

## Custom List

A user-defined list of accession genotype IDs can be defined and viewed in the PCA plot.

## Defining the custom list

Paste the list of genotype IDs into the text box and click "Parse".

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/a831583d-dd64-405b-8869-6468e7442c3f" />

## Visualising the custom list in the PCA plot

Switch to the Dataset Explorer and select "Custom List" from the "+Add Filter" menu.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/fd2a6aac-8f10-4f3b-bfd3-a1f51c855874" />

## Settings



Downloads the currently viewed plot as a PNG file.
