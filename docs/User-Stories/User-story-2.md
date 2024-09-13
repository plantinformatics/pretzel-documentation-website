# User Story 2 - Filtering AGG wheat accessions for stripe rust resistance gene Yr34/Yr48

In this User Story we will achieve the following in Prezel:

1. Explore and compare Yellow Rust QTLs on chromosome 5A from *Cheng at al. 2024* and *Tong et al. 2024* (a meta study collecting QTLs from many other studies) defined in different versions of the wheat genome reference assembly (IWGSC RefSeq v1.0 and IWGSC RefSeq v2.1)

2. Identify the Yr34/Yr48 region of 5AL based on results in *Qureshi et al. 2017*

3. Define the Wheat Barley 40K SNP array haplotype carried by wheat accession WAWHT2024 (AGG accession: AGG91389WHEA) in the Yr34/Yr48 region

4. Filter for AGG accessions matching the Yr34/Yr48 haplotype

## Login

Log in with the provided details on [https://agg.plantinformatics.io/login](https://agg.plantinformatics.io/login):

Email Address (username)

    UserStory2@AGG
Password

    UserStory2

![image](https://github.com/user-attachments/assets/e84c6263-d342-4dd4-a738-d486385ba5ca)

!!! note

    Please use the provided login account so you have access to all the relevant data 

## Step by step with screenshots

### Explore and compare Yellow Rust QTLs on chromosome 5A

Recent publications Cheng et al. 2024 and Tong et al. 2024 have reported Yellow Rust QTLs on chromosome 5A.

Navigate to the 'Explorer' tab and find the dataset in the list, then click the '+' icon next to it to list the chromosomes for which data is available.

    Triticum aestivum - IWGSC_RefSeq_v1.0 - QTL - Yellow Rust - Cheng 2024

This dataset only includes Yellow Rust QTLs on chromosome 5A. Load chr5A from this dataset by clicking the green '+' next to 'chr5A'.

![Peek 2024-09-13 20-30](https://github.com/user-attachments/assets/49acc28c-c198-4d59-9b71-e28d35e8a3d1)

(Optional) Move the bottom panel to the right to better view the contents of the panel and create more vertical space in the visualisation (middle) panel.

![image](https://private-user-images.githubusercontent.com/20571319/367255423-9e187d73-3143-4189-8c73-937fec4547dc.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MjYyMjM1NTQsIm5iZiI6MTcyNjIyMzI1NCwicGF0aCI6Ii8yMDU3MTMxOS8zNjcyNTU0MjMtOWUxODdkNzMtMzE0My00MTg5LThjNzMtOTM3ZmVjNDU0N2RjLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA5MTMlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwOTEzVDEwMjczNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTczMTQwNzc1ZWIzZTRhNjVmMTk0ZDJiYzI0NDg4MzE1ZjQ2M2Q0MmEyZTc3NjEyNjM0MTYyZDIzMWNkMmQxYWImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.bfTtjoynJ8wQdMl1KDM5aVVh2yba9ih_-9Zex22cxc8)

Navigate to the 'Explorer' tab and find the dataset

    Triticum aestivum - IWGSC_RefSeq_v2.1 - QTL - Yellow Rust - Tong 2024

This dataset only includes Yellow Rust QTLs on chromosome 5A. Load Chr5A from this dataset.

![Peek 2024-09-13 20-33](https://github.com/user-attachments/assets/7583ee78-7681-4bab-8fed-8aec9b16ab3f)

We can now see the QTLs displayed against IWGSC RefSeq v1.0 (intervals shown as bars against the axis) and IWGSC RefSeq v2.1 (peak markers shown as diamonds against the axis).

To increase the size of the diamonds indicating the peak markers from the Tong 2024 QTLs, navigate to the 'View' tab and scroll down to the 'QTL: Diamond Size' slider and increase the value.

![Peek 2024-09-13 20-35](https://github.com/user-attachments/assets/64b92083-a3f5-4a62-b093-2f128753ec98)

(Optional) Still in the View tab, find the slider for 'Outside Axis Margin' and reduce the value to increase the distance between axis in the plot.

![Peek 2024-09-13 20-38](https://github.com/user-attachments/assets/59621ccd-1a87-47e2-91c8-6c947aaf9c2b)

Next we will load SNP positions on the Wheat Barley 40K SNP array in both assemblies, to be able to compare positions across the assemblies.

Find the dataset

    Triticum aestivum - IWGSC_RefSeq_v1.0 - Markers - Wheat Barley 40k v1.1

and load chr5A. Then find the dataset

    Triticum aestivum - IWGSC_RefSeq_v2.1 - Markers - Wheat Barley 40k v1.1

and load Chr5A.

![Peek 2024-09-13 20-52](https://github.com/user-attachments/assets/22a3b55a-c3f2-434c-8973-8fca105988bf)

Green lines are drawn between the positions of markers in each assembly.

### Identify the Yr34/Yr48 region

We will use two genetic maps covering the Yr34/Yr48 region published in *Qureshi et al. 2018* to define our region of interest.

Load the following datasets:

    Triticum aestivum - genetic map - Carnamah x WAWHT2046

    Triticum aestivum - genetic map - WAWHT2046 x AvocetS

    Triticum aestivum - Qureshi 2018 markers anchored to genome assembly IWGSC v2.1

![Peek 2024-09-13 21-00](https://github.com/user-attachments/assets/73cd5641-adb3-40ac-abe8-30bdbe3abbcb)

Zoom the axes to focus on the end of 5AL.

![Peek 2024-09-13 21-16](https://github.com/user-attachments/assets/83a716ca-aa3c-4d39-997c-abf0c28f7256)

Navigate to the Search tab and type

    Yr38

into the Feature Search input box, then click Search. The location of Yr34 will be indicated by triangles in the two genetic maps loaded previously. Click the triangles to label them with 'Yr34'.

![Peek 2024-09-13 21-17](https://github.com/user-attachments/assets/41501924-d2e4-4f4e-8059-68daa0816b1a)

!!! note

    We have now related QTLs defined in IWGSC RefSeq v1.0, IWGSC RefSeq v2.1, and two genetic maps. Based on the alignment of the genetic maps from *Qureshi et al. 2018*, it is highly likely that the QTL from *Tong et al. 2024* is Yr34, while the QTL reported in *Cheng et al. 2024* is likely to be a different QTL. Also note the re-arrangement at the end of chromosome 5A in the two genome assemblies.

We can select ("brush") the IWGSC RefSeq v2.1 Chr5A axis around the QTL and navigate to the 'Features' tab in the right pan to examine more information about the QTL (directly loaded into Pretzel from the paper). We find this is a QTL from *Joukhadar et al. 2020*.

![Peek 2024-09-13 21-34](https://github.com/user-attachments/assets/20bb12bf-4c37-4d15-b616-83b77d88f9cb)

While holding Ctrl, click and hold the mouse on any part of the WAWHT2046xAvocetS axis and drag it to the left of the IWGSC RefSeq v2.1 Chr5A axis so we can see the projection of both maps to the genome assembly at the same time.

![Peek 2024-09-13 21-31](https://github.com/user-attachments/assets/81b2ed2c-5b39-4b42-912b-b7815672cd3d)

### Define the WAWHT2024 haplotype in the Yr34/Yr48 region

Now we have defined the region of interest - the end of chromosome 5AL - we will load the genotype data for the accession Yr34 was originally discovered in, WAWHT2024, genotyped on the Wheat Barley 40K SNP array by the AGG Strategic Partnership as AGG accession AGG91389WHEA1.

In the 'Explorer' tab, locate the following dataset:

        Triticum aestivum - IWGSC_RefSeq_v2.1 - WAWHT2046 genotype

Only Chr5A has been included for the User Story; load it into the view, then "split" the Chr5A axis by clicking the axis title and then the third button on the right as shown in the screenshot. This opens the axis to display the features that have been loaded within the chromosome. If the diamond indicating the QTL location becomes too big, use the 'QTL: Diamond Size' slider to adjust accordingly.

![Peek 2024-09-13 21-39](https://github.com/user-attachments/assets/6b88a73a-ae13-451c-8fff-98c550f71bcb)

Click and drag on the IWGSC RefSeq v2.1 Chr5A axis to select it from around 700Mb to the end of the chromosome. In the right panel, select the Genotypes tab. Adjust the width of the right panel so you can see the list of SNPs (this may depend on the resolution of the screen you are using, for example).

![Peek 2024-09-13 21-42](https://github.com/user-attachments/assets/6390cfb1-0278-40de-ab91-b09c2a99b849)

The right panel now displays the SNPs within the region we selected, with overlaps between datasets shown by the different colours.

Now load the genotype data for WAWHT2024 by clicking the button indicated in the screenshot, selecting AGG91389WHEA1 in the list, then clicking 'VCF Lookup'. Scroll down to the bottom to see the haplotype at the end of the chromosome. Since WAWHT2024 is the original accession where Yr34 was discovered, we have now defined the Wheat Barley 40K SNP array haplotype corresponding to Yr34.

![Peek 2024-09-13 21-57](https://github.com/user-attachments/assets/f449729d-3c0d-4b9e-adf6-c4ab62fff735)

### Compare other AGG accessions against the WAWHT2024 haplotype

In the 'Explorer' tab, locate the following dataset:

        Triticum aestivum - IWGSC_RefSeq_v2.1 - Genotypes - AGG Filled-in Release 1

This dataset includes all the AGG hexaploid wheat genotype data released so far (as of September 2024). Load Chr5A.

![Peek 2024-09-13 22-00](https://github.com/user-attachments/assets/5fba2bfb-a9b0-4e42-bd48-9c28cc20153b)

Now open the Genotype data pop-up menu by clicking the button next to the 'Genotypes' tab, then select the tab marked 'Wheat_CSv2.1_VCF-AGG-imp-r1'. The list includes over 12,000 wheat accessions in the AGG. Here you can select accessions of interest, or select a random set of accessions. Then click 'VCF Lookup' to request and display the data.

![Peek 2024-09-13 22-09](https://github.com/user-attachments/assets/2e2e24b9-e4b3-446d-bd17-49a4e0aae3e0)

By clicking on the Ref/Alt columns against each SNP, we can sort the genotypes by their distance from a particular haplotype. Scroll to the end of 5AL and click the Ref/Alt pattern corresponding to WAWHT2024 (AGG91389WHEA1).

![Peek 2024-09-13 22-10](https://github.com/user-attachments/assets/53458683-909e-49a2-b497-1d66816ee10f)

!!! note

    We have identified two more accessions with the same haplotype at the end of chromosome 5A as WAWHT2024 (AGG91389WHEA1). Note the two markers named Yr34-Yr48-sunKASP109-F and Yr34-Yr48-sunKASP112-F. These are *trait linked markers* included on the Wheat Barley 40K SNP array based on SNPs reported in *Qureshi et al. 2018*. The Yr34-Yr48-sunKASP112-F is monomorphic and from this we can conclude it did not translate to a SNP marker for some reason. The other marker Yr34-Yr48-sunKASP109-F is polymorphic and from the final image below, we can see the AGG accessions matching the WAWHT2024 (AGG91389WHEA1) haplotype carry the alternate allele for this marker. However, we also find two accessions that carry the alternate allele but which have a different allele for the last two markers in the chromosome, AVRIG28079 and AVRIG28078.

![finalimage](https://github.com/user-attachments/assets/554294c5-4d9e-4900-b90b-074db6995921)




