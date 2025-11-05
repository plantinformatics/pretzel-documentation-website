# Genolink User Guide

## Introduction to Genolink

Genolink is a tool designed for managing and analyzing genotype and passport data, enabling easy search, filtering, and retrieval of relevant accessions.

You can access Genolink and contribute to its development by visiting the official GitHub repository:  
[Genolink GitHub Repository](https://github.com/plantinformatics/genolink)

## Searching Genolink

Genolink provides the following search options that can be combined to refine searches and ensure only relevant accessions are retrieved.

![Genolink main interface](https://github.com/user-attachments/assets/5e164092-373b-49a0-8e45-c6d19bec3319)  
_Figure 1: Genolink main interface_

### Applying Genesys-PGR filters

Refine your search by passport descriptors (date of collection, crop, taxonomy, institute, country of origin, biological status, storage type).

![Passport Data Filter](https://github.com/user-attachments/assets/810a7d12-389f-4e93-8a5a-7c3f6604fee9)  
_Figure 2: Passport Data Filter_

### Wild Text Search

The wild text search allows you to query across multiple fields of the passport data.  
You can:

- Use **double quotes** for exact phrases (e.g., `"leaf"`)
- Use the **OR operator** (`|`) for multiple terms (e.g., `leaf | pea`)
- Use **asterisks** for prefix searches (e.g., `leaf*`)
- Use **parentheses** for grouping

The example below shows a query for `leaf | pea`. The search returns records that match either term across different fields, such as accession name, taxonomy, or remarks.

![Wild text search results example](https://github.com/user-attachments/assets/52ba8ac3-f495-4717-9312-4f2fb39eacd2)  
_Figure 3: Example results for query <code>rice | leaf</code>_

### Accession Number Search

Enter one or multiple accession numbers directly.

![Accession number search using direct input](https://github.com/user-attachments/assets/8dfe5407-c69a-464d-b225-db70bf46551f)  
_Figure 4: Accession number search using direct input_

Enter multiple accession numbers by uploading a text file.
Once uploaded, click Browse.

![Accession number search using file upload](https://github.com/user-attachments/assets/80817a89-0371-4b9b-97c6-7fbc805f58a5)  
_Figure 5: Accession number search using file upload_

Please upload a text file with your list of accessions, with each accession entered on a separate line.

![Text file format for accession number upload](https://github.com/user-attachments/assets/58c842b1-316b-4409-9b10-07a62e3d4f86)  
_Figure 6: Text file format for accession number upload_

After the upload, the filter will be applied when you press Search.

![Search results after uploading accession list](https://github.com/user-attachments/assets/83aaf759-5932-4301-a3ae-5f50717c8793)  
_Figure 7: Search results after uploading accession list_

> **Note:** Your file must be a plain text file (.txt).

### GenotypeID Search

The GenotypeID filter works the same way as the **Accession Number Search** (direct input or file upload).  
Please refer to the **Accession Number Search** section for detailed steps and examples.

The only difference is that, in the text file, you must provide a list of **GenotypeIDs** (one per line) instead of accession numbers.

### Filtering for Genotyped Accessions

To restrict the results to genotyped accessions for a given crop, you first need to:

1. Select **Passport Filter** from filter-type dropdown.
2. In the **Crops** section, tick the box for your crop of interest (e.g., **barley**).
3. At the bottom of the filter panel, select the Genotyped checkbox and choose one of the options:

- **Yes**: Only genotyped accessions will be included.
- **No**: Only non-genotyped accessions will be included.
- If both or neither options are selected, both genotyped and non-genotyped accessions will be included.

Once the filters are set, press the **Search** button.

![Filtering results by selecting the "Genotyped" checkbox](https://github.com/user-attachments/assets/1132d45c-de2d-4e1d-9c96-281981860a46)  
_Figure 8: Filtering results by selecting the "Genotyped" checkbox_

Finally, to download the full passport data for these filtered results, click on **Export All Passport Data**. This will export all passport data for the genotyped accessions matching your crop filter.

![Export All Passport Data](https://github.com/user-attachments/assets/97d88a10-8f6a-4a57-ae26-8a1ef44932eb)  
_Figure 9: Export All Passport Data_

## Requesting Genotype Data

To request genotype data for your filtered accession records:

1. **Select accessions** from the table by checking the boxes in the first column.
2. Once selected, open **Genotype Data** tab

![Selecting accessions and requesting genotype data](https://github.com/user-attachments/assets/02bf12fd-b3b1-403a-8239-19ed074837fb)  
_Figure 10: Selecting accessions and identifying genotype data availability_

3. After opening the Genotype-Data tab, click **Lookup Servers** to find Gigwa servers containing the selected accessions.

![Lookup Gigwa Servers](https://github.com/user-attachments/assets/1a46dee4-2d97-425d-8c4e-e4c5f8bd0ce6)
_Figure 11: Click Lookup Servers in the Genotype-Data tab to find Gigwa servers with selected accessions_

4. To authenticate Gigwa servers, enter credentials for private databases. For public servers, no credentials are needed. Note: all private selections require credentials.

![Authenticate Gigwa Servers](https://github.com/user-attachments/assets/49800c5d-e406-479e-a449-aa2c3bcec0b1)
_Figure 12: Authenticate Gigwa servers with credentials for private databases; no credentials needed for public servers._

5. After verifying access, a summary will be shown.
   - It shows how many of the selected accessions are registered in the **Genesys**.
   - It also indicates how many of the selected accessions have genotype data in the **Gigwa server**.
   - The summary lists the **Gigwa datasets** that contain genotype data for those accessions.

![Lookup Data summary for selected accessions](https://github.com/user-attachments/assets/4cd147be-4210-4553-991f-8e0c8f714e9a)  
_Figure 13: Summary showing genotype data availability in Genesys and Gigwa_

6. After selecting the dataset, you can further refine the genotype data search in two ways:

### Genotype Data Based on Genomic Region

- Filter results by specific **chromosomes**
- Define **genomic positions** (start–end ranges)

![Filtering genotype data by chromosome and position](https://github.com/user-attachments/assets/f4de8a1b-c632-43b3-865b-d44f2636c126)  
_Figure 14: Refining genotype data search using chromosome and position filters_

### Genotype Data Based on Marker Names

- Filter results using **Variant IDs** that correspond to specific genomic regions.

![Filtering genotype data by Variant IDs](https://github.com/user-attachments/assets/4f99f5f3-1c19-4ba2-b8f8-95ee214e4352)  
_Figure 15: Refining genotype data search using Variant IDs_

### All Markers

If you do not apply any of the above filters (chromosome, position, or variant ID), Genolink will return genotype results for **all chromosomes and all positions**.

> **Note:** This may generate very large result sets and could affect performance.

After configuring your filters (or leaving them empty), click **Search Genotype** to retrieve the results.  
You can perform multiple genotype searches on the same selected accessions by simply adjusting filters and clicking **Search Genotype** again. The **Reset** button is only used when you want to choose a new set of accessions from the Passport-Data tab before running a new genotype search.

![Genotype results table](https://github.com/user-attachments/assets/38bc4dc4-ae71-4841-a49f-6e6f5ebe0664)  
_Figure 16: Example of genotype search results_

### Exporting to VCF

After retrieving your genotype results, you can select the **server** from which you want to export the data.  
Once the server is chosen, click the **Export VCF** button to download the genotype data as a **VCF file**.

![Exporting genotype data as VCF](https://github.com/user-attachments/assets/1e7ce00e-3761-42de-ac63-ac7ab4a85de4)  
_Figure 17: Exporting genotype data in VCF format_
