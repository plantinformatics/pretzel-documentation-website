# User Story 3 - Exploring the wheat pan genome and yield QTLs on chromomsme 7A in Pretzel

There are three main parts to this User Story:

1. In the first part, we will learn how to navigate the wheat pan genome in Pretzel, and visualise some well known results such as the 5B/7B translocation and the *Thinopyrum ponticum* introgression in Longreach Lancer at the end of 3DL.

2. In the second part, we will briefly summarise results from the last 20 years around yield on chromosome 7A. We will use Pretzel to integrate a range of QTL studies and ultimately identify the APO1 gene.

3. Finally, we will combine the first two parts to:

   - Reproduce results reported in *Kuzay et al. 2019* and *Voss-Fels et al. 2019* relating to haplotypes carried by the 10+ Wheat Genomes in the APO region of chromosome 7A
   - Extend these results to classify wheat PGR accessions in the AGG
   - Identify wheat PGR accessions in the AGG carrying rare APO haplotypes

## Login

Log in with the provided details at <a href="https://agg.plantinformatics.io/login" target="_blank" rel="noopener noreferrer">https://agg.plantinformatics.io/login</a>:

Email Address (username)

    UserStory3@AGG
Password

    UserStory3

![image](https://github.com/user-attachments/assets/e84c6263-d342-4dd4-a738-d486385ba5ca)

!!! note

    Please use the provided login account so you have access to all the relevant data 

## Step by step with screenshots

### Assemblies from the 10+ Wheat Genome project in Pretzel

The 10 chromosome-scale assemblies from *Walkowiak et al. 2020* have been curated and made available in AGG Pretzel: ArinaLrFor, CDC Landmark, CDC Stanley, Jagger, Julius, Long Reach Lancer, Mace, Norin 61, SY Mattis and spelt wheat PI 190962.

## Assembly metadata

Metadata about the assemblies can be viewed by clicking on the respective Genome entry in the Pretzel Datasets Explorer. The metadata has been extracted from *Walkowiak et al. 2020* and includes accession name, pedigree, growth habit, origin and EBI-ENA ID.

<vid>

## Gene annotations by PGSB

De novo gene annotations from *White et al. 2024* (https://doi.org/10.1101/2024.01.09.574802) are available.

## Infinium Wheat Barley 40K v1.1 SNP array marker mappings

Markers from the Infinium Wheat Barley 40K v1.1 SNP array, which is being used to genotype the AGG wheat collection, have been mapped to each of the 10+ Wheat genomes using <a href="https://github.com/plantinformatics/brioche" target="_blank" rel="noopener noreferrer">Brioche</a>.

## BLAST search

Each of the 10+ Wheat genome assemblies can be searched by nucleotide sequence using Pretzel's BLAST search feature. Note that currently, searches can only be done against a single assembly at a time.

The mapping of markers across the genomes enables chromosome-scale alignments to be visualised, and regions to be projected from one genome to another (similar to how regions were projected between IWGSC RefSeq v1.0 and IWGSC RefSeq v2.1 in User Story 2).

# A history of wheat yield QTLs on chromosome 7AL

Yield and yield-related QTLs have been reported on 7AL since at least 2006. *Quarrie et al. 2006* reported a QTL in the centromere (Qyld.csdh.7AC) and on 7AL (Qyld.csdh.7AL), defined in an SSR-based genetic map from SQ1 x Chinese Spring.

The SSR map for 7AL and SSR marker positions against IWGSC RefSeq v2.1 have been curated and loaded into Pretzel as QUARRIE1 and QUARRIE2. Viewing both of these datasets visualises the genetic to physical alignment of this map.

Ten years later, *Su et al. 2016* reported a QTL for Thousand Kernel Weight (TKW) on 7AL. In 2019, two studies (*Kuzay et al. 2019* and *Voss-Fels et al. 2019*) reported QTLs for SNS and NRN in the same region.

This set of QTLs have been curated in the dataset YIELD_QTLs, defined as intervals against IWGSC RefSeq v2.1, based on curation of the marker intervals reported in the papers.

In Pretzel we can integrate all these results together and see how the interval was progressively narrowed. Ultimately, both *Kuzay et al. 2019* and *Voss-Fels et al. 2019* identified the wheat ortholog of rice gene APO (ABERRANT PANICLE ORGANIZATION), named WAPO1, as the likely gene influencing the yield phenotype.

## Confirming the location of the WAPO1 gene

ID search against v1.0, or BLAST.

# Studying the WAPO1 region in the 10+ Wheat genomes

A key result from *Kuzay et al. 2019* and *Voss-Fels et al. 2019* was that only two major haplotypes in the WAPO1 region of 7A, named HAP1 and HAP2, dominate modern hexaploid wheat. A less common haplotype, HAP3, was found to have a positive impact on yield. *Kuzay et al. 2019* classified the haplotypes of the 10+ Wheat genomes and found Chinese Spring, CDC Stanley, Mace and Norin61 to carry HAP1, while ArinaLrFor, CDC Landmark, Jagger, Julius, LongReach Lancer and SY Mattis carry HAP2. The spelt accession included in the 10+ Wheat genomes carried a different haplotype.

## Reproducing the haplotype classification from *Kuzay et al. 2019*

Using Brioche, a tool developed in the Australian Grains Genebank Strategic Partnership, we have in-silico genotyped the 10+ Wheat genome assemblies with the Wheat Barley 40K v1.1 SNP array. This dataset is available on AGG Pretzel as 10WHEATVCF.

Continuing from the above analysis where we have located the WAPO1 region, we can load this dataset, select the region around the gene, and load genotypes for the 10+ Wheat genomes. Clicking the ALT column, we can sort the accessions based on their genotype.

We have reproduced the same haplotype classification as reported in *Kuzay et al. 2019*. This shows that the Wheat Barley 40K v1.1 SNP array is able to correctly differentiate the haplotypes reported in the paper, noting that exome sequence was used in the 2019 study.

# Connecting the pan genome to the AGG

We have so far identified the WAPO1 region on chromosome 7AL through the integration of a number of yield QTLs over almost 20 years of research. We have reproduced the haplotype analysis reported in *Kuzay et al. 2019*, confirming the Wheat Barley 40K v1.1 SNP array detects the main haplotypes found in modern wheat.

We can now use Pretzel to directly relate these results to the AGG. We will achieve two main things: 1) Confirm that most wheat accessions in the AGG carry one of the two dominant haplotypes (HAP1 and HAP2) in the WAPO1 region; 2) Identify rarer haplotypes carried by PGR accessions in the AGG.

