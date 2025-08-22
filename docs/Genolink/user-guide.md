# Genolink User Guide

## Introduction to Genolink

Genolink is a tool designed for managing and analyzing genotype and passport data, enabling easy search, filtering, and retrieval of relevant accessions. 

You can access Genolink and contribute to its development by visiting the official GitHub repository:  
[Genolink GitHub Repository](https://github.com/plantinformatics/genolink)

## Searching Genolink

Genolink provides the following search options that can be combined to refine searches and ensure only relevant accessions are retrieved.


![Genolink main interface](https://github.com/user-attachments/assets/f5f1fe9a-9833-4cab-9df2-71e37b4480be)  
*Figure 1: Genolink main interface*


### Applying Genesys-PGR filters
Refine your search by passport descriptors (date of collection, crop, taxonomy, institute, country of origin, biological status, storage type).

![Passport Data Filter](https://github.com/user-attachments/assets/3af2dc8c-2084-4cb7-b3ba-3fd22e311f3a)  
*Figure 2: Passport Data Filter*

### Wild Text Search
The wild text search allows you to query across multiple fields of the passport data.  
You can:  
- Use **double quotes** for exact phrases (e.g., `"rice"`)  
- Use the **OR operator** (`|`) for multiple terms (e.g., `rice | leaf`)  
- Use **asterisks** for prefix searches (e.g., `rice*`)  
- Use **parentheses** for grouping  

The example below shows a query for `rice | leaf`. The search returns records that match either term across different fields, such as accession name, taxonomy, or remarks.  

![Wild text search results example](https://github.com/user-attachments/assets/44cd0ffa-5152-490d-8ceb-b4b45e5f4751)  
*Figure 3: Example results for query <code>rice | leaf</code>*

### Accession Number Search
Enter one or multiple accession numbers directly.

![Accession number search using direct input](https://github.com/user-attachments/assets/eee39d3f-0284-4bd3-b39d-7d26ac53a98f)  
*Figure 4: Accession number search using direct input*

Enter multiple accession numbers by uploading a text file.
Once uploaded, click Browse.

![Accession number search using file upload](https://github.com/user-attachments/assets/2a41f5cb-2a02-416e-8640-5fb94fedae9b)  
*Figure 5: Accession number search using file upload*

Please upload a text file with your list of accessions, with each accession entered on a separate line.

![Text file format for accession number upload](https://github.com/user-attachments/assets/69cece37-b651-477a-ad50-c4b1f9c6238b)  
*Figure 6: Text file format for accession number upload*

After the upload, the filter will be applied when you press Search.

![Search results after uploading accession list](https://github.com/user-attachments/assets/eaba74b1-0199-41c4-bd02-ccb0f7d51c32)  
*Figure 7: Search results after uploading accession list*

> **Note:** Your file must be a plain text file (.txt).

### GenotypeID Search
The GenotypeID filter works the same way as the **Accession Number Search** (direct input or file upload).  
Please refer to the **Accession Number Search** section for detailed steps and examples.  

The only difference is that, in the text file, you must provide a list of **GenotypeIDs** (one per line) instead of accession numbers.

### Filtering for Genotyped Accessions
To restrict results to **genotyped accessions only**, tick the **Check for genotype** checkbox in the filter panel and then press **Search**.  
This will return only those accessions with genotype data available.

![Filtering results by selecting the "Check for genotype" option](https://github.com/user-attachments/assets/0826761e-a0fa-4336-a93c-eb8c233b4bb9)  
*Figure 8: Filtering results by selecting the "Check for genotype" option*

## Requesting Genotype Data
To request genotype data for your filtered accession records:

1. **Select accessions** from the table by checking the boxes in the first column.  
2. Once selected, the **server(s) containing the genotype data** for those records will be displayed.  
3. You can identify which accessions have genotype data by checking the **AGG-SP Status** column.  
   - Accessions with genotype data show **Status = Completed**.  
   - These records also include a specific **GenotypeID** value.

![Selecting accessions and requesting genotype data](https://github.com/user-attachments/assets/e1d9e9b0-46d5-44ac-926a-287f02f5008c)  
*Figure 9: Selecting accessions and identifying genotype data availability*

4. After selecting the accessions and clicking **Lookup Data**, a summary will be shown.  
   - It indicates how many of the selected accessions have genotype data in the **Gigwa server**.  
   - It also shows how many of them are registered in the **Genolink internal database**.  
   - The summary lists the **Gigwa datasets** that contain genotype data for those accessions.  

![Lookup Data summary for selected accessions](https://github.com/user-attachments/assets/7e302c58-1375-4ca8-93ff-38ab9b3f09bf)  
*Figure 10: Summary showing genotype data availability in Gigwa and internal database*

5. After selecting the dataset, you can further refine the genotype data search in two ways:

### Genotype Data Based on Genomic Region
- Filter results by specific **chromosomes**  
- Define **genomic positions** (start–end ranges)  

![Filtering genotype data by chromosome and position](https://github.com/user-attachments/assets/888c7fb3-895b-4f74-9fd7-cfee8a3dd52a)  
*Figure 11: Refining genotype data search using chromosome and position filters*

### Genotype Data Based on Marker Names
- Filter results using **Variant IDs** that correspond to specific genomic regions.  

![Filtering genotype data by Variant IDs](https://github.com/user-attachments/assets/44b15828-1fe4-4105-a899-1f38a08b5f4c)  
*Figure 12: Refining genotype data search using Variant IDs*

### All Markers
If you do not apply any of the above filters (chromosome, position, or variant ID), Genolink will return genotype results for **all chromosomes and all positions**.  

> **Note:** This may generate very large result sets and could affect performance.  

After configuring your filters (or leaving them empty), click **Search Genotype** to retrieve the results.  
If you want to restart or run a new genotype search with different filters, click the **Reset** button to clear the current selections.

![Genotype results table](https://github.com/user-attachments/assets/e24217d2-ec6d-411e-826c-f4de158f8b71)  
*Figure 13: Example of genotype search results*

### Exporting to VCF
After retrieving your genotype results, you can select the **server** from which you want to export the data.  
Once the server is chosen, click the **Export VCF** button to download the genotype data as a **VCF file**.  

![Exporting genotype data as VCF](https://github.com/user-attachments/assets/16bf07b2-c82c-4e4d-9c46-55c02df53a67)  
*Figure 14: Exporting genotype data in VCF format*
