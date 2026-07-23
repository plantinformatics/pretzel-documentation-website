# Genolink User Guide

## Introduction to Genolink

Genolink is middleware designed to seamlessly connect passport data from [Genesys-PGR](https://www.genesys-pgr.org/) with genotype data in databases such as [Gigwa](https://gigwa.plantinformatics.io/gigwa/), enabling easy search, filtering, and retrieval of relevant genebank accessions.

Genolink is developed by the AGG Strategic Partnership in collaboration with The Crop Trust. You can access Genolink and contribute to its development by visiting the official GitHub repository:  
[Genolink GitHub Repository](https://github.com/plantinformatics/genolink)

The application has two main tabs:

- **Passport Data** is used to find accessions, review passport metadata, and select accessions for genotype analysis.
- **Genotype Data** is used to locate datasets containing the selected accessions, filter variants, inspect genotypes, and export VCF data.

The top of the page also includes a **View** control for choosing the passport metadata columns displayed in the results table and a **Help** button that opens this guide in a new browser tab.

Passport data is supplied by Genesys-PGR. Follow the Genesys terms and conditions and acknowledge Genesys when using data obtained through Genolink.

## Searching Genolink

Genolink provides the following search options that can be combined to refine searches and ensure only relevant accessions are retrieved.

![Genolink main interface](https://github.com/user-attachments/assets/1a39da3f-20b1-494a-8ed6-77b42fb9e4eb)  
_Figure 1: Genolink main interface_

### Applying Genesys-PGR filters

Refine your search by passport descriptors (date of collection, crop, taxonomy, institute, country of origin, biological status, storage type, and other descriptors). Open a filter section, select one or more values, and apply the filter. Compatible filters are combined to narrow the results.

![Passport Data Filter](https://github.com/user-attachments/assets/1d351541-6ddf-4a72-8492-306bfcbf7e5c)  
_Figure 2: Passport Data Filter_

### Wild Text Search

The wild text search allows you to query across multiple fields of the passport data.  
You can:

- Use **double quotes** for exact phrases (e.g., `"leaf"`)
- Use the **OR operator** (`|`) for multiple terms (e.g., `leaf | pea`)
- Use **asterisks** for prefix searches (e.g., `leaf*`)
- Use **parentheses** for grouping

The example below shows a query for `leaf | pea`. The search returns records that match either term across different fields, such as accession name, taxonomy, or remarks.

![Wild text search results example](https://github.com/user-attachments/assets/16f38fe4-050e-4b2e-8cbf-d576f2dcc897)  
_Figure 3: Example results for query <code>leaf | pea</code>_

### Accession Number Search

Enter one or multiple accession numbers directly.

![Accession number search using direct input](https://github.com/user-attachments/assets/5c2229e6-4c69-4a36-b493-6a59b29fba69)  
_Figure 4: Accession number search using direct input_

Enter multiple accession numbers by uploading a text file.
Once uploaded, click Browse.

![Accession number search using file upload](https://github.com/user-attachments/assets/e6e070f6-5db3-4c6c-b0fb-0bafc6ee024b)  
_Figure 5: Accession number search using file upload_

Please upload a text file with your list of accessions, with each accession entered on a separate line. Uploaded values may also be separated by commas, tabs, semicolons, or vertical bars.

After the upload, select **Apply Filter** to apply the accession number filter.

![Search results after uploading accession list](https://github.com/user-attachments/assets/40fdc2da-33a1-4c29-8e2e-d5d5f8cf35c6)  
_Figure 6: Search results after uploading accession list_

> **Note:** Your file must be a plain text file (.txt).

### GenotypeID Search

The GenotypeID filter works the same way as the **Accession Number Search** (direct input or file upload).  
Please refer to the **Accession Number Search** section for detailed steps and examples.

The only difference is that, in the text file, you must provide a list of **GenotypeIDs** instead of accession numbers. Genolink maps the supplied genotype IDs to accessions and retrieves their passport records. Depending on the deployment configuration, mappings may come from the Genolink database, Genesys, or a combination of both sources.

### Filtering for Genotyped Accessions

The **Check for genotype** checkbox is available only in **Passport Filter** mode. Enable it to restrict the results to accessions that have genotype mappings.

1. Select **Passport Filter** from filter-type dropdown.
2. In the **Crops** section, tick the box for your crop of interest (e.g., **barley**).
3. Select the **Check for genotype** checkbox.
4. Select **Apply Filter**.

When the checkbox is not selected, the results can include both genotyped and non-genotyped accessions. The checkbox is unavailable while text is entered in the wild text search box.

![Filtering results using the "Check for genotype" checkbox](https://github.com/user-attachments/assets/cf347ee8-da8c-4926-b290-c73982dd338b)  
_Figure 7: Filtering results using the "Check for genotype" checkbox_

Finally, to download the full passport data for these filtered results, click on **Export All Passport Data**. This will export all passport data for the genotyped accessions matching your crop filter.

![Export All Passport Data](https://github.com/user-attachments/assets/2ff9be66-c637-4c80-a15b-aec3bd227b06)  
_Figure 8: Export All Passport Data_

### Managing Active Filters

Applied criteria appear under **Active Filters**. Select the red remove icon beside an individual filter to remove it, or choose **Reset Filter** to clear the current search and restore the default filter state.

The **Total Accessions** value reports how many records match the current search. The table initially loads a portion of those records; use **More Results** below the table to load additional pages.

![Active filters, total accessions, and reset control](https://github.com/user-attachments/assets/bc2e4287-ba5e-4ca1-8e79-aeffd50737bc)  
_Figure 9: Active filters, total accessions, and reset control_

## Controlling the Passport Table View

Choose **View** at the top of the page to open **Select Metadata Columns to display**. In this window, you can:

- select or clear individual metadata fields;
- use **Select all** to restore all available columns;
- use **Clear** to clear the draft selection;
- choose **Cancel** to discard changes; or
- choose **Save & Refresh** to save the selection and refresh the passport results.

If no columns are selected when the view is saved, Genolink restores the default set of all columns. The saved choice is retained in the browser for future visits.

Available columns include passport descriptors such as institute, accession, taxonomy, crop, provenance, dates, and DOI, as well as Genolink-enriched fields such as genotype status, Genotype ID, dataset DOI, region, and sub-region.

![View modal for selecting passport metadata columns](https://github.com/user-attachments/assets/55491ea5-b43c-43ea-a4cb-2566898f29d3)  
_Figure 10: View modal for selecting passport metadata columns_

Changing the table view does not control which fields are exported. Export fields are selected separately when starting a passport export.

## Exporting Passport Data

Choose **Export All Passport Data** below the passport table. The **Select Fields to Export** window opens before the download starts.

1. Select each field that should appear in the TSV file, or enable **Select All Fields**.
2. Choose **Download** to export all records matching the current filters.
3. Choose **Close** to cancel.

**Accession Number** is always included. Country information needed by the export is handled automatically. The export selection is independent of the columns currently visible in the passport table.

The download covers the complete filtered result, not only the rows currently loaded or selected on screen. Large exports can take time; a loading indicator replaces the export button while Genolink fetches and prepares the data.

![Select Fields to Export modal for passport TSV data](https://github.com/user-attachments/assets/32c960d2-b20b-4aca-a4d2-d0c957ff1c60)  
_Figure 11: Select Fields to Export modal for passport TSV data_

The downloaded file is named `filtered_data_selected_fields.tsv`.

## Requesting Genotype Data

To request genotype data for your filtered accession records:

1. **Select accessions** from the table by checking the boxes in the first column.
2. Once selected, open **Genotype Data**
   ![Selecting accessions and requesting genotype data](https://github.com/user-attachments/assets/be3e86ba-4abd-4b9b-8291-65db8d94cbf1)  
   _Figure 12: Selecting accessions and identifying genotype data availability_

3. After opening the **Genotype Data** tab, Genolink automatically lists the Gigwa servers associated with the selected samples. A server is listed when its details are recorded for those samples in either the Genolink internal database or the Genesys database.
   ![Gigwa servers associated with the selected samples](https://github.com/user-attachments/assets/390bdc95-69e5-4967-825d-ecc11fe431a7)
   _Figure 13: Gigwa servers automatically identified for the selected samples_

4. By default, all listed Gigwa servers are treated as public, so no username or password is required. An administrator can enable the credential setting to provide additional security when accessing Gigwa data. When this setting is enabled, a **Public/Private** selection is displayed for every listed server:
   - Select **Public** to access the server in the same way as the default public mode, without credentials.
   - Select **Private** to display the username and password fields and enter the credentials for that server.

   Access mode and credentials are configured separately for each listed Gigwa server.

5. After server access is established, a summary will be shown.  
   • It shows how many of the selected accessions are registered in the **Genesys**.  
   • It also indicates how many of the selected accessions have genotype data in the **Gigwa server**.  
   • The summary lists the **Gigwa datasets** that contain genotype data for those accessions.  
   ![Lookup Data summary for selected accessions](https://github.com/user-attachments/assets/95b75675-a2c7-4065-97a7-ac47f74c9524)  
   _Figure 14: Summary showing genotype data availability in Genesys and Gigwa_

   Choose **Copy Sample-Names** to copy the discovered sample names to the clipboard. When available, a source table also shows accession, DOI, Genotype ID, and the studies containing each sample. Study headings link to the corresponding Gigwa project.

6. Select one dataset for each listed Gigwa server. A dataset must be selected for every server that will participate in the search. After selecting the datasets, you can further refine the genotype data search in two ways:

   ![Dataset selection grouped by Gigwa server](https://github.com/user-attachments/assets/29559948-5d22-4ac5-814a-6f212fafc9c4)  
   _Figure 15: Dataset selection grouped by Gigwa server_

### Genotype Data Based on Genomic Region

- Filter results by specific **chromosomes**
- Define **genomic positions** (start–end ranges)

![Filtering genotype data by chromosome and position](https://github.com/user-attachments/assets/bb5554d7-b077-443c-b6dd-384c0115c4c2)  
_Figure 16: Refining genotype data search using chromosome and position filters_

### Genotype Data Based on Marker Names

- Filter results using **Variant IDs** that correspond to specific genomic regions.
- Enter multiple Variant IDs separated by commas.

![Filtering genotype data by Variant IDs](https://github.com/user-attachments/assets/b44d9307-a367-409c-adf9-44ceae09992c)  
_Figure 17: Refining genotype data search using Variant IDs_

Only one of the genomic-region and Variant-ID filters is active at a time. Switching filter type clears values belonging to the other type.

### All Markers

If you do not apply any of the above filters (chromosome, position, or variant ID), Genolink will return genotype results for **all chromosomes and all positions**.

> **Note:** This may generate very large result sets and could affect performance.

After configuring your filters (or leaving them empty), click **Search Genotype** to retrieve the results.  
You can perform multiple genotype searches on the same selected accessions by simply adjusting filters and clicking **Search Genotype** again. The **Reset** button is only used when you want to choose a new set of accessions from the Passport-Data tab before running a new genotype search.

![Genotype results table](https://github.com/user-attachments/assets/40f7aef0-87e3-4839-b7ba-f698d16e1914)  
_Figure 18: Example of genotype search results_

Gigwa results from participating servers are displayed in a combined table. The fixed columns identify each variant:

- `CHROM`: chromosome or reference name;
- `POS`: genomic position;
- `ID`: variant identifier;
- `REF`: reference allele; and
- `ALT`: alternate allele.

The remaining columns contain genotype values for the discovered samples. Select a variant column heading to sort the current results in ascending or descending order where sorting is enabled. Use **First**, **Prev**, the page-number buttons, **Next**, and **Last** to move through result pages.

### Exporting to VCF

After retrieving your genotype results, you can select the **server** from which you want to export the data.  
Once the server is chosen, click the **Export VCF** button to download the genotype data as a **VCF file**.

VCF export is performed for one server at a time because each server may contain a different dataset or set of samples. Repeat the export for another server when required. The export uses the selected dataset, samples, and active variant or position filter.

![Exporting genotype data as VCF](https://github.com/user-attachments/assets/d0e35010-b650-4760-bfa1-fb063ec48baf)  
_Figure 19: Exporting genotype data in VCF format_

## Troubleshooting

- **No passport records appear:** remove restrictive active filters, check identifiers for typing errors, or choose **Reset Filter** and try again.
- **The genotype tab finds no server:** confirm that accessions were selected in the passport table and that those accessions have completed genotype mappings with server information.
- **An accession has no genotype data:** a passport record can exist without a completed sample mapping or without the sample being present in the selected genomic platform.
- **Private Gigwa login fails:** verify the username and password for the specific server. Credentials for one server do not automatically apply to another.
- **A dataset cannot be searched:** make sure one dataset is selected for every participating server.
- **A position search returns no variants:** verify the chromosome, coordinate range, and selected dataset.
- **An export takes time:** passport exports retrieve the complete filtered result, and VCF exports may require the genomic server to prepare the file. Keep the page open while the loading indicator is displayed.
- **The application reports a Genesys error:** check the network connection and use the displayed refresh option to try loading the source data again.
