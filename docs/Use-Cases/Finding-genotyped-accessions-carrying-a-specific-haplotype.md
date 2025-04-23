# Finding genotyped accessions carrying a specific haplotype

!!! example "New feature in v3.7.3"

    - Added the ability to search a VCF file for accessions carrying a specific SNP or haplotype

!!! note "This section assumes some working knowledge of using the [Genotype tab](/Basic-Functions/Genotype-tab/)"

## Introduction
The example here illustrates how we used this new functionality to search ```Triticum aestivum - IWGSC_RefSeq_v2.1 - Genotypes - AGG Filled-in Release 1``` for the 333 accessions carrying the Yr34/Yr48 haplotype located at the end of Chr5A.

![finalimage](https://github.com/user-attachments/assets/554294c5-4d9e-4900-b90b-074db6995921)

!!! note "For more information on how we found the accessions carrying Yr34/Yr48 where located at the end of Chr5A using Pretzel please see [User Story 2](/User-Stories/User-story-2/)."
    
## Finding the VCF file

Start by adding the VCF file which contains all of the AGG accessions that we will eventually search. This can be found using the search pannel on the left hand side of the screen and searching for ```agg wheat filled```. This should help us find ```Triticum aestivum - IWGSC_RefSeq_v2.1 - Genotypes - AGG Filled-in Release 1```.

![Image](https://github.com/user-attachments/assets/c5185b5a-6c05-4c3e-9b13-dfb734b6aaf2)

## Navigating to the region of interest

We are interested in the end of ```chr5A```, so open up dataset and load in ```chr5A```.
Next, to want to navigate to the end of ```chr5A```.
This can be done by clicking and dragging over the region of interest and pressing the zoom button that appears at the bottom.
Then select the region again, making sure to cover up to the end of the chromosome. 
This is done to select the features we want to include in our search. Once this is selected the genotype table will be automatically populated with the selections.

![Image](https://github.com/user-attachments/assets/846e73dc-85e3-4004-a649-2c67126de2e6)

## Selecting the haplotype

To add the haplotype we want to search, click on the specific allele located in the REF and ALT columns. This will order the accessions based on the specific selected alleles. If you made a mistake, you can click on the same allele again to remove it.

!!! note "Example specific information"

    Since our haplotype is already known, we can use the pattern identified already in [User Story 2](/User-Stories/User-story-2/).
    ![finalimage](https://github.com/user-attachments/assets/554294c5-4d9e-4900-b90b-074db6995921)

![Image](https://github.com/user-attachments/assets/e428daf7-1997-4c10-9e20-9ee29d148898)

## Filtering the accessions for the haplotype
Once the haplotype has been defined, open up the sample selection menu and select the "Filter by defined haplotype" option. 
This will filter the accessions for only those that match the selected haplotype.
This will then update the number of haplotypes and update the list of selectable accessions in the sample selection menu.

In this example, we see a change from AGG wheat 12,606 accessions (full list) to a now filtered list of 333 accessions carrying this exact haplotype.

![Image](https://github.com/user-attachments/assets/f71d8988-e29f-4c3d-b7bf-260375d0bfad)

## Viewing and using the results

There a couple of ways to view the results, the easiest is to display this within pretzel.
By going down to the accessions selection box click on the first accession, hold ```Shift``` then scroll down to the bottom of the list to select the last accession.

This should select all 333 of the filtered accessions and display them in the genotype table.

![Image](https://github.com/user-attachments/assets/a004be8c-fc78-476a-90ac-61ead697a4d6)


![Image](https://github.com/user-attachments/assets/6f61393d-146b-4a7e-8fad-8494cc3326df)

## Exporting the results (optional)

There are two main ways to export the results of the search, the first is to export the genotype table as a VCF file. This can be done by clicking the ```VCF Download``` button above the genotype table.
![Image](https://github.com/user-attachments/assets/833f19d8-47b8-4b01-bdf1-6c2b709ca872)

The other way to export is within the accession selection menu. This can be done by clicking the ```copy to clipboard``` button. This will copy the list of accessions to the clipboard in a list.
![Image](https://github.com/user-attachments/assets/0387a889-c7fe-4f0b-b4f9-90d9fd1400e9)