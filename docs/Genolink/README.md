# Genolink

## Searching Genolink

Genolink provides three main ways to search:

- **Genesys-PGR Filters** 

- **Accession number Search** 

- **Filtering for genotyped accessions**

<p align="center">
  <img src="./images/img1.PNG" alt="Passport Data Filter">
  <br>
  <em>Figure 1: Passport Data Filter</em>
</p>

These options can be combined to refine searches and ensure only relevant accessions are retrieved.

### Applying Genesys-PGR filters
refine search by passport descriptors (date of collection, crop, taxonomy, institute, country of origin, biological status, storage type).

<p align="center">
  <img src="./images/img2.PNG" alt="Passport Data Filter">
  <br>
  <em>Figure 1: Passport Data Filter</em>
</p>

### Accession number search
– enter one or multiple accession numbers directly.

<p align="center">
  <img src="./images/img3.PNG" alt="Accession-Based Filter">
  <br>
  <em>Figure 2: Accession-Based Filter</em>
</p>

– enter multiple accession numbers using a text file.
Please click on browse

<p align="center">
  <img src="./images/img4.PNG" alt="Accession-Based Filter">
  <br>
  <em>Figure 2: Accession-Based Filter</em>
</p>

Please upload a text file with your list of accessions, with each accession entered on a separate line.

<p align="center">
  <img src="./images/img5.PNG" alt="Accession-Based Filter">
  <br>
  <em>Figure 2: Accession-Based Filter</em>
</p>

After the upload, your filter will be applied when you press Search.

<p align="center">
  <img src="./images/img6.PNG" alt="Accession-Based Filter">
  <br>
  <em>Figure 2: Accession-Based Filter</em>
</p>

Note: Your file must be a plain text file (.txt).

### GenotypeID search
– The GenotypeID filter works the same way as the Accession Number filter (direct input or file upload).  
Please refer to the *Accession Number Filter* section for detailed steps and examples.  

The only difference is that, in the text file, you must provide a list of **GenotypeIDs** (one per line) instead of accession numbers.

## Requesting genotype data
To request genotype data for your filtered accession records:

1. **Select accessions** from the table by checking the boxes in the first column.  
2. Once selected, the **server(s) containing the genotype data** for those records will be displayed.  
3. You can identify which accessions have genotype data by checking the **AGG-SP Status** column.  
   - Accessions with genotype data show **Status = Completed**.  
   - These records also include a specific **GenotypeID** value.  

<p align="center">
  <img src="./images/img7.PNG" alt="Selecting accessions and requesting genotype data">
  <br>
  <em>Figure: Selecting accessions and identifying genotype data availability</em>
</p>

### Genotype data based on genomic region
Specify reference, chromosome, start–end; validation rules.

### Genotype data based on names of markers
Accepted markers list, partial names, case sensitivity.

### All markers
What this mode returns, performance considerations.

### Exporting as a VCF
Subset options (samples, markers, region), header info, download.
