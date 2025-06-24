# Genotype tab

Genotype data is visualised in the Genotype tab in the right hand panel

The genotype matrix requires two inputs, the features and accessions which can be inputted a number of ways. 

## Inputting features and accessions
!!!note

    The accessions can only be added once a VCF file has been added to the view. [Searching for a dataset](Explore-tab.md#searching-for-a-dataset)
    <!-- Image of adding VCF file into view -->
    ![Image](https://github.com/user-attachments/assets/6c383e9f-84e5-4595-b4d4-d87febcd2649)


Features can be selected via the view by selecting a region of the axis.

<!-- Image for adding SNPs to genotype table -->
![Image](https://github.com/user-attachments/assets/46e153f9-c840-401a-a58c-427f86735c0f)


Acessions can be added via a pop out menu from the genotype tab.

<!-- Image for adding Samples to genotype table -->
![Image](https://github.com/user-attachments/assets/ed288f00-5e16-4cbb-a8fb-5b364d3e4d7a)




If the exact feature names are known, it can be inputted using the [VCF Genotype Search function](Search-tab.md#vcf-genotype-search)

## Interpreting the genotype matrix

<!-- Image of the genotype matrix -->
<img width="400" alt="Image" src="https://github.com/user-attachments/assets/9e4830c9-ed95-4565-ad9c-e901cb0fcb06" />

| Display | Meaning      | Colour     |
|---------|--------------|------------|
| 0       | Reference    | Blue       |
| 1       | Heterozygous | Light-blue |
| 2       | Alternate    | Orange     | 


## Selecting a haplotype and ordering the genotype matrix

The cells located in the ref and alt columns can be clicked on to select a specific haplotype. The selected haplotype be further used filter a VCF for a given haplotype.
When selected, the genotype matrix will be ordered based on the specific haplotype pattern.

<!-- Image for ordering the SNPs -->
![Image](https://github.com/user-attachments/assets/ae4041cd-4d6e-467a-ba01-8f0d42bdbd4b)

## Filtering by a defined haplotype

If a haplotype is selected by clicking the cells in the ref and alt columns, the loaded VCF file can be searched using the selected haplotype.

When checked, text will appear below the check box to indicate that the VCF is being searched.

<img alt="Image" src="https://github.com/user-attachments/assets/09b1ebd3-028f-4bf6-b3ec-815d28333e10" />
Afterwards the number of acessions shown at the top will display "Filtered" together with the number of acessions that match the filter. This will also update the sample selction box to ONLY include those that match the given haplotype pattern.

Note that the search will also return HET (1) results. If you wish to filter them out, please check the "Match exact alleles" button.

![Image](https://github.com/user-attachments/assets/44f93df4-49f5-41dd-9676-ed5e378ae43a)

## Accessing passport data for selected samples
To access the passport data for the selected samples, simply just click on the Genolink button. This can be useful after filtering for a defined haplotype.

<img alt="Image" src="https://github.com/user-attachments/assets/60f6f28b-6972-4dee-99a9-8ad083ba43a0" />

## Resizing the genotype matrix

The genotype matrix can be resized by dragging the right hand side of the genotype tab.
<!-- Image for resizing the genotype matrix width -->
![Image](https://github.com/user-attachments/assets/2486c2ff-aaad-44c7-91a9-1fbef9c2bcda)
And its headings can be resized using the slider in the table headings
<!-- Image for resizing the genotype matrix headings -->
![Image](https://github.com/user-attachments/assets/7a1ef28c-c9ee-478c-8385-e7a2d8397f0a)

## Genotype matrix alternative colour theme

To select an alternative colour scheme, go into the Genotype accession selection menu, click on the controls tab and click on the Choose Colour Theme button

<img alt="Image" src="https://github.com/user-attachments/assets/2569cfeb-cd33-4fd6-a9e7-69d98323e6e5" />
<img alt="Image" src="https://github.com/user-attachments/assets/66cc209a-580a-4367-a711-aa95cf70cc83" />

