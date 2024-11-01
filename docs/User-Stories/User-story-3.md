# User Story 3 - From SSRs to pan genomes with Pretzel: Two decades of wheat yield QTLs on chromosome 7A

There are three main parts to this User Story:

1. In the first part, we will learn how to navigate the wheat pan genome in Pretzel, and visualise some well known results such as the 5B/7B translocation in ArinaLrFor and SY Mattis as well as the *Thinopyrum ponticum* introgression in LongReach Lancer at the end of 3DL.

2. In the second part, we will briefly summarise results from the last 20 years around yield on chromosome 7A. We will use Pretzel to integrate a range of QTL studies and ultimately identify the WAPO1 gene.

3. Finally, we will combine the first two parts to:
* Reproduce results reported in *Kuzay et al. 2019* and *Voss-Fels et al. 2019* relating to haplotypes carried by the 10+ Wheat Genomes in the WAPO1 region of chromosome 7A
* Extend these results to classify wheat PGR accessions in the AGG
* Identify wheat PGR accessions in the AGG carrying rare haplotypes in the WAPO1 region

## Login

Log in with the provided details at <a href="https://agg.plantinformatics.io/login" target="_blank" rel="noopener noreferrer">https://agg.plantinformatics.io/login</a>:

Email Address (username)

    UserStory3@AGG
Password

    UserStory3

![login](https://github.com/user-attachments/assets/d4f3b276-5fb9-4a3b-a178-9c2d807833b3)

!!! note

    Please use the provided login account so you have access to all the relevant data 

After logging in, click Map Viewer in the top left to enter the Pretzel application.

![Peek 2024-11-01 15-55](https://github.com/user-attachments/assets/193560d4-55b5-4094-a16d-b53a92177e02)

## Step by step with screenshots

## Assemblies from the 10+ Wheat Genome project in Pretzel

The 10 chromosome-scale assemblies from *Walkowiak et al. 2020* have been curated and made available in AGG Pretzel: ArinaLrFor, CDC Landmark, CDC Stanley, Jagger, Julius, LongReach Lancer, Mace, Norin 61, SY Mattis and spelt wheat PI 190962.

### Assembly metadata

Metadata about the assemblies can be viewed by clicking on the respective Genome entry in the Pretzel Datasets Explorer. The metadata has been extracted from *Walkowiak et al. 2020* and includes accession name, pedigree, growth habit, origin and EBI-ENA ID.

![Peek 2024-11-01 15-57](https://github.com/user-attachments/assets/2db7d760-01bd-48f8-ac6b-aa685a2d8dc0)

### Gene annotations by PGSB

The latest de novo gene annotations from *White et al. 2024* (https://doi.org/10.1101/2024.01.09.574802) have been loaded into Pretzel.

#### Example: Viewing a genome annotation

For example, we can load the PGSB annotation for CDC Landmark chromosome 2B by selecting ```chr2B``` from the ```Triticum aestivum - CDC Landmark - Genes PGSBv2.1``` dataset. We can click the axis title to open the axis title menu, split the axis, zoom in and select a region. The selected genes are shown in the Features tab in the right panel.

![Peek 2024-11-01 16-00](https://github.com/user-attachments/assets/6e59004c-495a-429f-86d7-4789c5927816)

### Infinium Wheat Barley 40K v1.1 SNP array marker mappings

Markers from the Infinium Wheat Barley 40K v1.1 SNP array, which is being used to genotype the AGG wheat collection, have been mapped to each of the 10+ Wheat genomes using <a href="https://github.com/plantinformatics/brioche" target="_blank" rel="noopener noreferrer">Brioche</a>.

The mapping of markers across the genomes enables chromosome-scale alignments to be visualised, and regions to be projected from one genome to another (similar to how regions were projected between IWGSC RefSeq v1.0 and IWGSC RefSeq v2.1 in User Story 2).

#### Example: Visualising the 5B/7B translocation in ArinaLrFor and SY Mattis

*Walkowiak et al. 2020* reported a striking translocation between 5B and 7B found in ArinaLrFor and SY Mattis. We can visualise this by loading the Wheat Barley 40K marker mapping in IWGSC RefSeq v2.1 for chromosomes 5B and 7B, and the same chromosomes in ArinaLrFor and/or SY Mattis.

![Peek 2024-11-01 16-09](https://github.com/user-attachments/assets/166c40e5-7711-4b2e-93a0-651da39bf8fa)

We can clearly see the long arm of 7B has joined with the long arm of 5B in ArinaLrFor. Rearranging the order of the chromosomes (while holding Ctrl, click on the axis and drag it), we can also see how the short arm of 5B has joined to the short arm of 7B in ArinaLrFor.

![Peek 2024-11-01 16-13](https://github.com/user-attachments/assets/30276a07-95c2-4432-bc6d-bda2452e0c86)

#### Example: Identifying the genes underlying the *Thinopyrum ponticum* introgression in LongReach Lancer at the end of 3DL

First, we load the Wheat Barley 40K marker mapping for chromosome 3D in both IWGSC RefSeq v2.1 and LongReach Lancer.

![Peek 2024-11-01 21-42](https://github.com/user-attachments/assets/36507934-788b-4a24-b651-9a52eb125fe4)

Note that the LongReach Lancer chromosome 3D is longer than the Chinese Spring 3D.

Next, we can load the PGSB gene annotation for LongReach Lancer chromosome 3D, split the axis to be able to view the features, then zoom in to the region. We can see a list of the genes by selecting the region and inspecting the Features tab in the right panel. We can reduce the threshold Pretzel uses to display features as histograms by increasing the Threshold slider in the Selected Axis Options section of the View tab in the left panel until features are displayed. Once features are displayed, they will be listed in the Features table when selected.

![Peek 2024-11-01 21-53](https://github.com/user-attachments/assets/df84fe7f-a442-4c8e-97ee-e79e0f0a3b59)

### BLAST search

Each of the 10+ Wheat genome assemblies can be searched by nucleotide sequence using Pretzel's BLAST search feature. Note that currently, searches can only be done against a single assembly at a time.


## A history of wheat yield QTLs on chromosome 7AL

Yield and yield-related QTLs have been reported on 7AL since at least 2006. *Quarrie et al. 2006* reported a QTL in the centromere (Qyld.csdh.7AC) and on 7AL (Qyld.csdh.7AL), defined in an SSR-based genetic map from SQ1 x Chinese Spring.

The SSR map for 7AL and SSR marker positions against IWGSC RefSeq v2.1 have been curated and loaded into Pretzel as ```User Story 3 - Wheat genetic map Chinese Spring x SQ1``` and ```User Story 3 - Wheat SSRs anchored to IWGSC RefSeq v2.1``` respectively. Viewing both of these datasets visualises the genetic to physical alignment of this map.

![Peek 2024-11-01 16-17](https://github.com/user-attachments/assets/c11f75aa-2852-4b32-ab53-7b0c567842b9)

Ten years later, *Su et al. 2016* reported a QTL for Thousand Kernel Weight (TKW) on 7AL. *Keeble-Gagnère et al. 2018* also reported a similar yield QTL from a RAC785 x Kukri cross.

In 2019, two studies (*Kuzay et al. 2019* and *Voss-Fels et al. 2019*) reported QTLs for SNS and NRN in the same region.

This set of QTLs have been curated in the dataset ```User Story 3 - Wheat yield QTLs on 7A```, defined as intervals against IWGSC RefSeq v2.1, based on curation of the marker intervals reported in the papers.

In Pretzel we can integrate all these results together and see how the interval was progressively narrowed. Ultimately, both *Kuzay et al. 2019* and *Voss-Fels et al. 2019* identified the wheat ortholog of rice gene APO (ABERRANT PANICLE ORGANIZATION), named WAPO1, as the likely gene influencing the yield phenotype.

First, load the ```User Story 3 - Wheat yield QTLs on 7A``` dataset. Then switch to the View tab, and under the Displayed Data section at the top, click the Trait tab. Then tick the box titled **Show / Hide QTLs of all Traits**.

![Peek 2024-11-01 21-10](https://github.com/user-attachments/assets/b96de8e6-ea96-4303-86a0-52c6e6a463eb)

### A brief detour into wheat-rice synteny, or, how we found the WAPO1 gene

*Note: This brief section can only be reproduced on <a href="https://plantinformatics.io" target="_blank" rel="noopener noreferrer">https://plantinformatics.io</a> for now. Datasets from plantinformatics.io will be transfered to AGG Pretzel over the next 6 months. Those interested in studying wheat-rice syntenic alignments can sign up for a free account at <a href="https://plantinformatics.io/signup" target="_blank" rel="noopener noreferrer">https://plantinformatics.io/signup</a>.*

Sign in to <a href="https://plantinformatics.io" target="_blank" rel="noopener noreferrer">https://plantinformatics.io</a> and load the following datasets: chromosomes 6 and 8 from ```Oryza_sativa_IRGSP-1.0_genes``` and chr7A from ```Triticum_aestivum_IWGSC_RefSeq_v1.0_HC_genes```. Re-order the axes so that 7A is in the middle.

![Peek 2024-11-01 21-33](https://github.com/user-attachments/assets/a7cea75b-17bf-478e-9f8c-23005fd0137c)

Next, we can search for the rice <a href="https://www.uniprot.org/uniprotkb/Q655Y0/entry#sequences" target="_blank" rel="noopener noreferrer">ABERRANT PANICLE ORGANIZATION (APO)</a> gene ID, Os06g0665400. The search results identify the rice gene but also the orthologous wheat ID, TraesCS7A01G481600.

![Peek 2024-11-01 21-36](https://github.com/user-attachments/assets/64b44d9c-4084-4068-a1e0-3bdd999376fe)

### Confirming the location of the WAPO1 gene

We can use the WAPO1 gene sequence to locate the gene in the genome. Copy the sequence from the BLAST Use Case and follow the steps in that Use Case to search the IWGSC RefSeq v2.1 assembly. If searching with default parameters (as in the animation below), the BLAST results identify the 7A, 7B and 7D homoeologs of the gene. Remove the 7B and 7D chromosomes from the view.

![Peek 2024-11-01 21-12](https://github.com/user-attachments/assets/1efeed08-d861-4854-9a64-0db0c6ddb4e6)

We can now zoom closer to the region to find that the gene falls exactly within the set of overlapping intervals, but outside the interval from *Quarrie et al. 2006*.

![Peek 2024-11-01 21-15](https://github.com/user-attachments/assets/44aea8c0-4828-4510-b24b-8a40c4c69c78)

Before we proceed, we will remove the SSR map from the view, split the IWGSC RefSeq v2.1 chromosome 7A axis and adjust the view to capture the complete region of interest.

![Peek 2024-11-01 21-17](https://github.com/user-attachments/assets/fae80ebc-a538-4945-9c5e-8163a52295de)

Note that we can view details about the QTLs by selecting the region and inspecting the Features tab in the right panel.

![Peek 2024-11-01 21-18](https://github.com/user-attachments/assets/cfa97643-2a62-4593-b678-334f4c38bca1)

## Studying the WAPO1 region in the 10+ Wheat genomes

A key result from *Kuzay et al. 2019* and *Voss-Fels et al. 2019* was that only two major haplotypes in the WAPO1 region of 7A, named HAP1 and HAP2, dominate modern hexaploid wheat. A less common haplotype, HAP3, was found to have a positive impact on yield. *Kuzay et al. 2019* classified the haplotypes of the 10+ Wheat genomes and found Chinese Spring, CDC Stanley, Mace and Norin61 to carry HAP1, while ArinaLrFor, CDC Landmark, Jagger, Julius, LongReach Lancer and SY Mattis carry HAP2. The spelt accession included in the 10+ Wheat genomes carried a different haplotype.

### Reproducing the haplotype classification from *Kuzay et al. 2019*

Using Brioche, a tool developed in the Australian Grains Genebank Strategic Partnership, we have in-silico genotyped the 10+ Wheat genome assemblies with the Wheat Barley 40K v1.1 SNP array. This dataset is available on AGG Pretzel as ```Triticum aestivum - IWGSC RefSeq v2.1 - Genotypes - 10 Wheat Genomes```.

Continuing from the above analysis where we have located the WAPO1 region, we can load this dataset, select the region around the gene, and load genotypes for the 10+ Wheat genomes. Clicking the ALT column, we can sort the accessions based on their allele at the selected SNP.

![Peek 2024-11-01 21-20](https://github.com/user-attachments/assets/22e6d8a1-5dc7-41d1-8fbc-267a6552f43b)

We have reproduced the same haplotype classification as reported in *Kuzay et al. 2019*. This shows that the Wheat Barley 40K v1.1 SNP array is able to correctly differentiate the haplotypes reported in the paper, noting that exome sequence was used in the 2019 study.


## Connecting the pan genome to the AGG

We have so far identified the WAPO1 region on chromosome 7AL through the integration of a number of yield QTLs over almost 20 years of research. We have reproduced the haplotype analysis reported in *Kuzay et al. 2019*, confirming the Wheat Barley 40K v1.1 SNP array detects the main haplotypes found in modern wheat.

We can now use Pretzel to directly relate these results to the AGG. We will achieve two main things: 1) Confirm that most wheat accessions in the AGG carry one of the two dominant haplotypes (HAP1 and HAP2) in the WAPO1 region; 2) Identify rarer haplotypes carried by PGR accessions in the AGG.

![Peek 2024-11-01 21-23](https://github.com/user-attachments/assets/41daaab6-7123-4e09-aa42-eafd5180772e)



