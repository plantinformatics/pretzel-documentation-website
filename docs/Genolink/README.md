# Genolink

## Searching Genolink

Genolink provides three main ways to search:

- **Genesys-PGR Filters**
  
- **Wild text search** 

- **Accession number Search**

- **GenotypeID search**

- **Filtering for genotyped accessions**

<p align="center">
  <img src="./images/img1.PNG" alt="Genolink main interface">
  <br>
  <em>Figure 1: Genolink main interface</em>
</p>

These options can be combined to refine searches and ensure only relevant accessions are retrieved.

### Applying Genesys-PGR filters
refine search by passport descriptors (date of collection, crop, taxonomy, institute, country of origin, biological status, storage type).

<p align="center">
  <img src="./images/img2.PNG" alt="Passport Data Filter">
  <br>
  <em>Figure 1: Passport Data Filter</em>
</p>

### Wild Text Search
The wild text search allows you to query across multiple fields of the passport data.  
you can:  
- Use **double quotes** for exact phrases (e.g., `"rice"`)  
- Use the **OR operator** (`|`) for multiple terms (e.g., `rice | leaf`)  
- Use **asterisks** for prefix searches (e.g., `rice*`)  
- Use **parentheses** for grouping  

The example below shows a query for `rice | leaf`. The search returns records that match either term across different fields, such as accession name, taxonomy, or remarks.  

<p align="center">
  <img src="./images/img8.PNG" alt="Wild text search results example">
  <br>
  <em>Figure 2: Example results for query <code>rice | leaf</code></em>
</p>

### Accession number search
– enter one or multiple accession numbers directly.

<p align="center">
  <img src="./images/img3.PNG" alt="Accession number search using direct input">
  <br>
  <em>Figure 2: Accession number search using direct input</em>
</p>

– enter multiple accession numbers using a text file.
Please click on browse

<p align="center">
  <img src="./images/img4.PNG" alt="Accession number search using file upload">
  <br>
  <em>Figure 2: Accession number search using file upload</em>
</p>

Please upload a text file with your list of accessions, with each accession entered on a separate line.

<p align="center">
  <img src="./images/img5.PNG" alt="Text file format for accession number upload">
  <br>
  <em>Figure 2: Text file format for accession number upload</em>
</p>

After the upload, your filter will be applied when you press Search.

<p align="center">
  <img src="./images/img6.PNG" alt="Search results after uploading accession list">
  <br>
  <em>Figure 2: Search results after uploading accession list</em>
</p>

Note: Your file must be a plain text file (.txt).

### GenotypeID search
– The GenotypeID filter works the same way as the Accession Number filter (direct input or file upload).  
Please refer to the *Accession Number Filter* section for detailed steps and examples.  

The only difference is that, in the text file, you must provide a list of **GenotypeIDs** (one per line) instead of accession numbers.

### Filtering for Genotyped Accessions
To restrict results to **genotyped accessions only**, tick the **Check for genotype** checkbox in the filter panel and then press **Search**.  
This will return only those accessions with genotype data available.

<p align="center">
  <img src="./images/img9.PNG" alt="Filtering results by selecting the ‘Check for genotype’ option">
  <br>
  <em>Figure 2: Filtering results by selecting the ‘Check for genotype’ option</em>
</p>

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
