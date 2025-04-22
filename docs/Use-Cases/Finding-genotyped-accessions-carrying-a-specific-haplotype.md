# Finding genotyped accessions carrying a specific haplotype

!!! example "New feature in v3.7.3"

!!!note

    This section assumes some working knowledge of using the [Genotype tab](/Basic-Functions/Genotype-tab/)

This Use Case demonstrates new functionality added to Pretzel version 3.7.3, detailed in the Basic Functions documentation [here](/Basic-Functions/Genotype-tab/#filter-by-defined-haplotype).

In this example we will be using this new functionality to identify AGG wheat accessions carrying the haplotype for Yr34 discovered in [User Story 2](/User-Stories/User-story-2/).

First load the AGG wheat genotypes (```Triticum aestivum - IWGSC_RefSeq_v2.1 - Genotypes - AGG Filled-in Release 1```) then navigate to your desired region of interest. In this case we locate the end of Chr5A as it was shown in User Story 2 to carry the Yr34/Yr48 region.

![Image](https://github.com/user-attachments/assets/f8557669-9820-48e8-ab35-2796641fb9ea)

Haplotypes can be selected by clicking on the specific allele located in the REF and ALT columns. This will also [order the accessions based on the specific selected alleles](/Basic-Functions/Genotype-tab/#ordering-the-genotype-matrix).

![Image](https://github.com/user-attachments/assets/e428daf7-1997-4c10-9e20-9ee29d148898)

Once the haplotype has been defined, open up the sample selection menu and select the "Filter by defined haplotype" option. This will filter the accessions to only those that match the selected haplotype.

In this example, we find 333 AGG wheat accessions carrying this exact haplotype.

Select those accessions and add them to the genotype matrix. You can click in the accessions list and press Ctrl+A to select all of the filtered accessions.

![Image](https://github.com/user-attachments/assets/878b91be-ae10-4b67-9881-bbe86fc1deb6)

We can see that all the accessions added to the genotype table carry the same haplotype we have defined. These results can be further explored in Prezel or the results can be downloaded as a VCF file via the VCF Download button.

![Image](https://github.com/user-attachments/assets/a5c8474f-33ac-4c55-818e-8c308628436a)


