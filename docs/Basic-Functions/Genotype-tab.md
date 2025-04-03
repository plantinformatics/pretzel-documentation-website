# Genotype tab

Genotype data is visualised in the Genotype tab in the right hand panel

The genotype matrix requires two inputs, the features and accessions which can be inputted a number of ways. 

## Inputting features and accessions
!!!note

    The accesstions can only be added once a VCF file has been added to the view. [Searching for a dataset](/Basic-Functions/Explore-tab/#searching-for-a-dataset)
    <!-- Image of adding VCF file into view -->
    ![Image](https://github.com/user-attachments/assets/6c383e9f-84e5-4595-b4d4-d87febcd2649)


Features can be selected via the view by selecting a region of the axis.

<!-- Image for adding SNPs to genotype table -->
![Image](https://github.com/user-attachments/assets/46e153f9-c840-401a-a58c-427f86735c0f)


Acessions can be added via a pop out menu from the genotype tab.

<!-- Image for adding Samples to genotype table -->
![Image](https://github.com/user-attachments/assets/ed288f00-5e16-4cbb-a8fb-5b364d3e4d7a)

If the exact feature names are known, it can be inputted using the [VCF Genotype Search function](/Basic-Functions/Search-tab/#vcf-genotype-search)

## Interpreting the genotype matrix

<!-- Image of the genotype matrix -->
<img width="400" alt="Image" src="https://github.com/user-attachments/assets/9e4830c9-ed95-4565-ad9c-e901cb0fcb06" />

| Display | Meaning      | Colour     |
|---------|--------------|------------|
| 0       | Reference    | Blue       |
| 1       | Heterozygous | Light-blue |
| 2       | Alternate    | Orange     | 


## Ordering the genotype matrix

The genotype matrix can be ordered by clicking on the specific allele located in the ref and alt columns. This will order the accessions based on the specific selected alleles.

<!-- Image for ordering the SNPs -->
![Image](https://github.com/user-attachments/assets/ae4041cd-4d6e-467a-ba01-8f0d42bdbd4b)

## Resizing the genotype matrix

The genotype matrix can be resized by dragging the right hand side of the genotype tab.
<!-- Image for resizing the genotype matrix width -->
![Image](https://github.com/user-attachments/assets/2486c2ff-aaad-44c7-91a9-1fbef9c2bcda)
And its headings can be resized using the slider in the table headings
<!-- Image for resizing the genotype matrix headings -->
![Image](https://github.com/user-attachments/assets/7a1ef28c-c9ee-478c-8385-e7a2d8397f0a)

## Filter by defined haplotype

When the filter by defined haplotype is selcted, the selections made on the genotype table that also order the genotype table will be used to filter the accessions.
This then changes the selectable accessions to match the selection.
<!-- Image for filtering the accessions -->
![Image](https://github.com/user-attachments/assets/41826e74-da16-47cb-ac2f-fb18d7696d45)