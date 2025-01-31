# User Story 1 – Identifying virus resistant PGRs using Pretzel


Overview of Key Steps To Visualise Results in Pretzel

1. Project genetic map QTL into Cameor v1 genome assembly

2. Integrate genes and KASP markers

3. Identify sbm-1 gene with BLAST search

4. Examine WGS genotypes around the sbm-1 gene to identify haplotype shared by resistant accessions

5. Identify Multispecies Pulse 30K SNP array marker(s) that tag the haplotype

6. Examine PGRs from the AGG using the identified marker(s) to identify PGRs likely carrying the PSbMV resistance allele


## Login

Log in with the provided details on [https://agg.plantinformatics.io/login](https://agg.plantinformatics.io/login):

Email Address (username)

    UserStory1@AGG
Password

    UserStory1

!!! note

    Please use the provided login account so you have access to all the relevant data 

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-0.png)

## Video tutorial

<iframe width="1020" height="630" src="https://www.youtube.com/embed/7bd6uX_NvZw?si=lrJGFGMdBA3akTV9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Step by step with screenshots

### Load genetic map and QTL
Navigate to the 'Explorer' tab and scroll down to the Datasets box find

    Field pea PSbMV QTL mapped in Kaspa x Yarrum

and select

    Ps VI
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-1.png)

### Load SNP marker locations in the genome assembly
In the same 'Explorer' tab and Datasets box find

    Field pea genetic map SNP markers anchored to genome assembly (Cameor v1)
and select 

    chr1LG6
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-2.png)

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-2-extra.png)

### Invert the orientation of the axis
In the centre view click on the title of the axis at the top

    Kaspa x Yarrum : Ps IV
This will bring up the axis title menu on screen. Click the middle button to invert the orientation of the axis
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-3.png)
To close this box press the top right "x" button 
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-4.png)

### (Optional) Display the position and name of QTL
On the left axis locate the 3 boxes and click on one of them
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-5.png)
An arrow should appear on left of the axis and click the arrow to bring the up name
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-6.png)

### (Optional) Resize the display
Navigate to the 'View' tab, scroll down till you find the slider titled 'Outside Axis Margin' and reduce this value to increase the distance between axes in the visualisation

    Outside Axis Margin
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-7.png)

### Displaying features within the axis
In the centre view click on the title of the right axis at the top to bring up the same menu from earlier. This time, click on the right most button to display features. Then close it using the same "x" button in the top right hand corner.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-8.png)

### Load KASP marker positions in the genome assembly
In the 'Explorer' tab and Datasets box find

    Field pea KASP markers for PSbMV (Swisher 2020)
and select 

    chr1LG6
![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-9.png)

### Locate sbm-1 gene in genome assembly using BLAST search
Navigate to 'Search' tab, scroll down to DNA Sequence Blast Search and input the following text into the search box

    >AY423375.2
    GGAGAAAGAAACCGAGAGAGAGCAAAAATGGTTGTAGAAGAAACCCCCAAATCCATCATCACCGACGATCAAATCACAACAAACCCTAATCGCGTTATCGAAGACGACAACAATCTTGAAGAAGGAGAGATCCTCGATGAAGACGATTCCTCCGCCACTTCCAAACCCGTCGTCCACCAACCTCACCTCCTCGAGAATTCTTGGACTTTCTGGTTTGATACCCCCGCAGCAAAATCCAAACAAGCCGCTTGGGGTAGCTCAATGCGACCCATCTACACTTTCTCCACTGTTGAAGAGTTTTGGAGCATTTACAATAACATTCATCATCCTGGTAAGTTGGCTGTGGGAGCAGATTTCTATTGTTTCAAGCATAAAATTGAACCTAAATGGGAGGATCCCATTTGTGCTAATGGTGGGAAATGGACTGCGAACTATCCGAAGGGAAAATCTGATACCAGTTGGTTATACACGTTGTTGGCAATGATTGGAGAACAATTTGATCATGGAGATGAAATTTGCGGAGCGGTTGTGAATGTAAGGGGTAGGGCTGAGAAGATTTCTATTTGGACTAAGAATGCTTCAAATGAAGCTGCTCAGGTGAGCATTGGAAAACAGTGGAAGGAGTTTCTTGATTATAATGAGACCATGGGCTTTATATTTCATGATGATGCAAGGAAACTCGACAGAAATGCTAAAAACAAATATGTTGTGTGAACTGTATTGCGTTCTTACATGGTAGCAAACTAGCAATTGCATGAGATGCCTCTCCGATATTCAACATGTTGCTTAATGCTTTCTAAGCCTTTTAAATCTCGTATTGAGTAGTATTTCCAGATTTGTGTGCGGATAATCTTTTGACTGTAGACGATGTTTCATCAATAATAGAGTGATTTAGTCAAAAAAAAAA

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-10.png)

Scroll down even further and select

    Field pea reference genome (Cameor v1)

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-11.png)

This will then make the search button clickable and then press the search button. 

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-12.png)

Scroll up and a new tab will appear in the DNA Sequence Blast Search titled "Blast output". Click the tab to display the results (they may take some time to arrive). Clicking the button at the top of the table will maximise the table.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-13.png)

### (optional) Inspect BLAST results

Full details of the BLAST results are shown in the table. Control the hits shown in the view by checking/unchecking the view column.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-14.png)

### Zoom to region around sbm-1 gene

Use Pretzel's zoom functions [Zooming in and out of datasets](/Basic-Functions/Zooming-in-and-out-of-datasets/) to refine the view. Zoom in to the region around the sbm-1 gene.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-15.png)

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-16.png)

### Load genome assembly gene annotation

In the Explorer tab, find

    Field pea reference genome annotation (Cameor v1)

and select

    chr1LG6

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-17.png)

### Load whole genome sequence (WGS) based SNP data from resistant and susceptible accessions

In the Explorer tab, find

    Field pea WGS genotype data for resistant and susceptible accessions

and select

    chr1LG6

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-18.png)

### Select (brush) region around gene

If needed, refine the zoomed region to include the immediate area around the sbm-1 gene.

Click and drag on the right-hand axis to select the region around the gene.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-19.png)

### Switch to Genotypes tab in right panel

In the right panel, click the Genotypes tab. Click and drag the resize bar to expand the width of the right panel.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-20.png)

### Load genotype data for resistant and susceptible accessions

Click the icon at the right of the Genotypes to open the Genotypes dialog menu. While holding Shift, click on the first sample in the list, scroll down to the bottom and click on the last sample, to select all samples. Then click VCF Lookup.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-21.png)

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-22.png)

### Sort accessions based on haplotype around the KASP marker position

Click on the ALT column in line with the KASP marker (the dark purple square in the 3rd column of the table). The cell should change to a green colour when it has been clicked. This will order the samples based on their allele at this position.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-23.png)

### Load Multispecies Pulse 30K SNP array AGG field pea PGR genotype dataset

In the Explorer tab, find

    Field pea AGG 30K genotype data sample

and select

    chr1LG6

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-24.png)

### Identify SNP on Pulse 30K array that tags identified haplotype

In the Genotypes tab in the right panel, Pulse 30K positions are now indicated by orange squares in the second column of the table.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-25.png)

### Remove WGS data from the view

Click on the axis title at the top of the right-hand axis and click the X to the left of the WGS dataset to remove it from the view.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-26.png)

### Load genotypes from AGG field pea PGR

Click the icon at the right of the Genotypes to open the Genotypes dialog menu. While holding Shift, click on the first sample in the list, scroll down to the bottom and click on the last sample, to select all samples. Then click VCF Lookup.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-27.png)

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-28.png)

### Sort accessions based on allele at the identified SNP

Click on the ALT column in line with the Pulse 30K marker identified in the previous steps. The cell should change to a green colour when it has been clicked. This will order the samples based on their allele at this position.

![enter image description here](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/user-stories/user-story-1/us-1-29.png)
