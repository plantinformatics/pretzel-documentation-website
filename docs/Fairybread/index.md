# Fairybread User Guide

## Introduction to Fairybread

Genolink is middleware designed to seamlessly connect passport data from [Genesys-PGR](https://www.genesys-pgr.org/) with genotype data in databases such as [Gigwa](https://gigwa.southgreen.fr/gigwa/), enabling easy search, filtering, and retrieval of relevant genebank accessions.

Fairybread is developed by the AGG Strategic Partnership. You can access Fairybread source code and contribute to its development by visiting the official GitHub repository:  
[Fairybread GitHub Repository](https://github.com/plantinformatics/fairybread)

## Layout

The FairyBread interface comprises

![Genolink main interface](https://github.com/user-attachments/assets/5e164092-373b-49a0-8e45-c6d19bec3319)  
_Figure 1: Genolink main interface_

## Data Explorer

The Data Explorer is the main view in FairyBread where datasets can be selected, PCA visualisation displayed and the passport data shown in the table below.

### Selecting the dataset

Multiple species and datasets can be visualised in FairyBread.

### Working with the PCA plot

FairyBread uses Plotly to generate the PCA visualisation. On the right hand side is a panel of buttons which enable zooming in and out, moving around the plot and selecting points.

#### Mouse wheel zoom

The mouse wheel can be used to zoom in and out of the plot. Position the cursor where you want to zoom in/out and scroll up/down.



#### Zoom in button

Zooms in to the entire plot one step.

<img width="1906" height="1058" alt="image" src="https://github.com/user-attachments/assets/e84a9c79-f85b-4596-a991-78886a334bdc" />

#### Zoom out button

Zooms out of the plot one step.

<img width="1906" height="1058" alt="Image" src="https://github.com/user-attachments/assets/05f90602-2fa9-4c20-9177-411d6d96fb9b" />

#### Autoscale and Reset axes

Resets the zoom and position of the view to include all the points currently visible.

#### Zoom (selection) button

Enables zooming in to a rectangular region defined by the user. Click and drag in the plot to define the region to zoom in to.

#### Pan button

Pans within the plot.

#### Box select button

Selects all points within the rectangle defined by the user. Click and drag in the plot to define the region of points to select. Double click inside the plot to reset the selection.

#### Lasso select button

Selects all points inside a shape defined manually by the user. Click and drag the mouse around the plot to define the region of points to select. Double click inside the plot to reset the selection.

#### Download plot button

Downloads the currently viewed plot as a PNG file.
