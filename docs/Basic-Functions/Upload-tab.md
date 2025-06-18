# Upload Tab

The Upload tab in Pretzel allows you to add your own datasets via our excel templates for private use and comparison.

### Supported uploadable datasets

| Data Type  | Dataset Name Format   | Description|
|------------|-----------------------|------------|
| Alignment  | Alignment\|DataName   | Refers to a feature with a defined position or interval, except for a QTL. This is commonly used for markers or genes, which are typically anchored to a specified genome assembly. Units are in base pairs (bp).|
| Alignment        | Map\|DataName         | Used for uploading genetic maps, where units for the defined position are in centiMorgans (cM).|
| QTL        | QTL\|DataName         | Used for uploading QTLs. The defined interval positions can relate to either a genome assembly (where coordinates are in bp), or a genetic map (where coordinates are in cM).|

### Upload Templates

<div class="grid cards" markdown>

-   :material-book-open-page-variant:{ .lg .middle } __Upload Template User Guides__

    ---

    Learn how to format and upload your data correctly

    [:octicons-arrow-right-24: View Guides](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/pretzel-upload-templates/UserGuides.xlsx)

-   :material-file-upload:{ .lg .middle } __Alignment Template__

    ---

    Download the template for uploading Alignment data (positions in base pairs)

    [:octicons-download-24: Download Template](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/pretzel-upload-templates/Workshop_Pretzel_upload_Alignment_template.xlsx)

-   :material-map:{ .lg .middle } __Genetic Map Template__

    ---

    Download the template for uploading genetic maps (positions in centiMorgans)

    [:octicons-download-24: Download Template](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/pretzel-upload-templates/Workshop_Pretzel_upload_GeneticMap_template.xlsx)

-   :material-chart-bell-curve:{ .lg .middle } __QTL Template__

    ---

    Download the template for uploading QTL data (supports both bp and cM positions)

    [:octicons-download-24: Download Template](https://pretzel-images-public.s3.ap-southeast-2.amazonaws.com/pretzel-upload-templates/Workshop_Pretzel_upload_QTL_template.xlsx)

</div>

### Upload template general guide

#### Metadata Sheet

The figure and table below describe the fields in the 'Metadata' sheet for uploading a custom QTL dataset into Pretzel. The mandatory fields are used by Pretzel and are case sensitive; they must match the relevant dataset in Pretzel exactly to link datasets effectively e.g. to link a QTL to a genome assembly. The optional parameters below are used to display meta data in the 'Dataset' panel to align with FAIR (Findable, Accessible Interoperable, Re-usable) data standards. We recommend using the parameters below as best practise. Additional optional columns can be added if desired.

The following is an example of metadata inputs for a QTL upload and how the metadata gets incorporated into Pretzel.

=== "Metadata"

    | Field        | Value |
    |--------------|-------|
    | QTL          | Wheat_CSv2.1_7AL_QTLs |
    | Species      | Triticum aestivum |
    | Crop         | Wheat |
    | displayName  | Triticum aestivum - IWGSC_RefSeq_v2.1 - QTL - 7A yield_XX |
    | parentName   | Wheat_IWGSC_RefSeq_v2.1 |
    | licensing    | none |
    | Citation 1   | Kuzay S, Xu Y, Zhang J, Katz A, Pearce S, Su Z, Fraser M, Anderson JA, Brown-Guedira G, DeWitt N, Peters Haugrud A, Faris JD, Akhunov E, Bai G, Dubcovsky J. Identification of a candidate gene for a QTL for spikelet number per spike on wheat chromosome arm 7AL by high-resolution genetic mapping. Theor Appl Genet. 2019 Sep;132(9):2689-2705. doi: 10.1007/s00122-019-03382-5. Epub 2019 Jun 28. PMID: 31254024; PMCID: PMC6708044. |
    | Citation 2   | Keeble-Gagnère, G., Rigault, P., Tibbits, J. et al. Optical and physical mapping with local finishing enables megabase-scale resolution of agronomically important regions in the wheat genome. Genome Biol 19, 112 (2018). https://doi.org/10.1186/s13059-018-1475-4 |
    | DOI          | [https://doi.org/10.1186/s13059-018-1475-4](https://doi.org/10.1186/s13059-018-1475-4) |
    | Comments     | The positions of the QTL were determined through BLAST of flanking marker sequences against the genome. |
    | Contact      | Prepared by XY (Agriculture Victoria); xyz@gmail.com |

=== "Pretzel UI"

    ![Image](https://github.com/user-attachments/assets/4babdded-bb5f-450e-a662-cfc910099893)

#### Dataset Sheet

Dataset sheet
The fields in the ‘Dataset’ sheet are very specific to the type of data being uploaded. The names of the mandatory parameters in the LHS column below are case sensitive.
It is important that the numbers entered into the ‘Start’, ‘End’ and ‘Position’ fields are formatted correctly. In excel, highlight the relevant cells and set the format to ‘General’, ensuring they do not contain any commas or thousand separators e.g. ‘678380602’ not ‘678,380,602’.

![Image](https://github.com/user-attachments/assets/b34b4543-c2e4-4739-81f0-2349d7fd020c)

Additional, optional columns can be added as desired to capture other information e.g. human-readable gene descriptions, gene identifiers.

### Uploading genomes, BLAST databases and vcf files

These datasets can be added to pretzel but require a bit more work and is unavailible via the pretzel UI.
If you would like to upload these datasets to pretzel please [contact us](mailto:gabriel.keeble-gagnere@agriculture.vic.gov.au).

## Uploading via JSON

Coming soon!

If you you're experiencing any issues or have any questions, please [contact us](mailto:gabriel.keeble-gagnere@agriculture.vic.gov.au).
