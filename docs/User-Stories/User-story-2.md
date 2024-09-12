# User Story 2 - Filtering AGG wheat accessions for stripe rust resistance gene Yr34/Yr48

In this User Story we will achieve the following in Prezel:

1. Explore and compare Yellow Rust QTLs on chromosome 5A from Cheng at al. 2024 and Tong et al. 2024 defined in different versions of the wheat genome reference assembly (IWGSC RefSeq v1.0 and IWGSC RefSeq v2.1)

2. Identify the Yr34/Yr48 region of 5AL based on results in Qureshi et al. 2017

3. Define the Wheat Barley 40K SNP array haplotype carried by wheat accession WAWHT2024 (AGG91389WHEA) in the Yr34/Yr48 region

4. Filter for AGG accessions matching the Yr34/Yr48 haplotype

## Login

Log in with the provided details on [https://agg.plantinformatics.io/login](https://agg.plantinformatics.io/login):

Email Address (username)

    UserStory2@AGG
Password

    UserStory2

!!! note

    Please use the provided login account so you have access to all the relevant data 

## Step by step with screenshots

### Explore and compare Yellow Rust QTLs on chromosome 5A

Recent publications Cheng et al. 2024 and Tong et al. 2024 have reported Yellow Rust QTLs on chromosome 5A.

Navigate to the 'Explorer' tab and find the dataset

    Triticum aestivum - IWGSC_RefSeq_v1.0 - QTL - Yellow Rust - Cheng 2024

This dataset only includes Yellow Rust QTLs on chromosome 5A. Load chr5A from this dataset.

Navigate to the 'Explorer' tab and find the dataset

    Triticum aestivum - IWGSC_RefSeq_v2.1 - QTL - Yellow Rust - Tong 2024

This dataset only includes Yellow Rust QTLs on chromosome 5A. Load Chr5A from this dataset.

We can now see the QTLs displayed against IWGSC RefSeq v1.0 (intervals shown as bars against the axis) and IWGSC RefSeq v2.1 (peak markers shown as diamonds against the axis).

To increase the size of the diamonds indicating the peak markers from the Tong 2024 QTLs, navigate to the 'View' tab and scroll down to the 'QTL: Diamond Size' slider and increase the value.

Next we will load SNP positions on the Wheat Barley 40K SNP array in both assemblies, to be able to compare positions across the assemblies.

Find the dataset

    Triticum aestivum - IWGSC_RefSeq_v1.0 - Markers - Wheat Barley 40k v1.1

and load chr5A. Then find the dataset

    Triticum aestivum - IWGSC_RefSeq_v2.1 - Markers - Wheat Barley 40k v1.1

and load Chr5A.

Green lines are drawn between the positions of markers in each assembly.

### Identify the Yr34/Yr48 region

We will use two genetic maps covering the Yr34/Yr48 region published in Qureshi et al. 2018 to define our region of interest.

Load the following datasets:

    Triticum aestivum - genetic map - Carnamah x WAWHT2046

    Triticum aestivum - genetic map - WAWHT2046 x AvocetS

    Triticum aestivum - Qureshi 2018 markers anchored to genome assembly IWGSC v2.1

Re-arrange the axes and zoom the region in IWGSC RefSeq v2.1 to focus on the end of 5AL.

Navigate to the Search tab and type

    Yr38

into the Feature Search input box, then click Search. The location of Yr34 will be indicated by triangles in the two genetic maps loaded previously. Click the triangles to label them with 'Yr34'.

### Define the WAWHT2024 haplotype in the Yr34/Yr48 region

Now we have defined the region of interest - the end of chromosome 5AL - we will load the genotype data for the accession Yr34 was originally discovered in, WAWHT2024, genotyped on the Wheat Barley 40K SNP array by the AGG Strategic Partnership as AGG91389WHEA1.

In the 'Explorer' tab, locate the following dataset:

        Triticum aestivum - IWGSC_RefSeq_v2.1 - WAWHT2046 genotype

Only Chr5A has been included for the User Story.

Now "split" the Chr5A axis by clicking the axis title and then the third button on the right as shown in the screenshot. This opens the axis to display the features that have been loaded within the chromosome.

Select the IWGSC RefSeq v2.1 Chr5A axis from around 700Mb to the end of the chromosome. In the right panel, select the Genotypes tab.

The right panel now displays the SNPs within the region we selected, with overlaps between datasets shown by the different colours.

Now load the genotype data for WAWHT2024 by clicking the button indicated in the screenshot, selecting AGG91389WHEA1 in the list, then clicking 'VCF Lookup'. Scroll down to the bottom to see the haplotype at the end of the chromosome. Since WAWHT2024 is the original accession where Yr34 was discovered, we have now defined the Wheat Barley 40K SNP array haplotype corresponding to Yr34.


