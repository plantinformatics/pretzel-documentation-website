# Search tab

## VCF Genotype Search

!!! example "New feature"
    
    This search allows a user to view the genotypes for a set of accessions of interest at a small subset of markers. The user only needs to know the accessions of interest and marker names to generate a summary table in a few seconds.
 

![vcf-feature-search](https://github.com/user-attachments/assets/f29743ac-29ff-4660-a384-5991cc48028c)

### VCF Genotype Search inputs 

This search requires two inputs, the names of the samples to be searched and the feature names. Some example inputs are shown below:

``` text title="Sample names"
AGG409647BARL1-B00001-1-03
AGG409740BARL1-B00001-1-04
AGG410003BARL1-B00001-1-05
```
``` text title="Feature names"
AVRIG00246
AVRIG00484
```

While these inputs can be entered manually, the easiest way to get the sample names is to load a VCF file and select the samples of interest.

Within the box, first select your VCF to search. This will load the VCF and give you a list of all the available samples.
![vcf-feature-search-02](https://github.com/user-attachments/assets/2028eec5-6a25-4120-882b-1806266943c1)

If anything is entered into the Search/Filter box, the list will be filtered to match the search term. Clicking on a sample will add it to the list of samples to be searched.

![vcf-feature-search-03](https://github.com/user-attachments/assets/
1c71f8d7-1a41-485f-9c1f-bff6339f51c6)

Features can be added by entering the feature names into the Features input text box.
#### (Optional) Loading multiple samples 
!!! note

    The following search has only been tested up to 1000 samples. The interface will become extremely slow if a larger number of samples are selected. If it does become slow refresh the page to restart.
To select a range of samples, hold down the CTRL key and select another sample in the list.
![vcf-feature-search-04](https://github.com/user-attachments/assets/f2acc5dc-7c31-4fd2-a9fa-37ab09ba7e47)



### View results
Once the search button is pressed the results will be displayed in a table on the right hand panel in the Genotypes tab.
![vcf-feature-search-06](https://github.com/user-attachments/assets/44b9ca10-cb88-4342-b5ef-06ac47faf054)

### (Optional) Selecting additional features from the view
Adding additional features to the search can be done by entering the feature names into the Features input text box. Or it can be done by selecting the features from the axis.
![Animation](https://github.com/user-attachments/assets/8fda9526-4b1c-46e3-ba20-7af55d3ed6ee)


## Feature search

### VCF Search inputs
!!!note

    Only full names will be accepted by the feature search, and there needs to be an exact match including capitalisation. Most features are stored in their capitalised format. 
 
Once the feature names have been inputted into the search box. Please press the search button to view the search results.

An example search is shown below:
``` text title="Feature names"
AVRIG33950
IWB31543  
```

![Search](https://github.com/user-attachments/assets/478b157c-f607-4f3e-8116-36fa04e0f1b7)

### View results
 
The search results will be displayed under the Feature Search box. To view the results and its location on the genome, click the green plus icon on the left side of each search result. This will load in the relevant chromosome with a blue arrow pointing to the feature. The arrow can be clicked on to display the feature name. 

![View results](https://github.com/user-attachments/assets/ab590a89-de94-45b7-867c-0724b682b592)

### Adding or Removing feature names
 
To add additional features to the search, add the new feature names to the existing search and press the search button again.

An example of the new search query is shown below with the new feature **IWB65513**:

``` text title="Feature names"
AVRIG33950
IWB31543
IWB65513
```


![Adding features](https://github.com/user-attachments/assets/ab9e781f-a8fa-474e-bc9d-2c17bbd775d1)

To remove a displayed feature, simply remove the feature name from the input list and click search again.

![Remove features](https://github.com/user-attachments/assets/58283bca-355b-4ee0-84e1-19dfefa6526d)

### To view features between specified features

Brush the axes between the features, and select the Features tab on the right side. All features will be displayed in a table format.

![To view features between specified features (1)](https://github.com/user-attachments/assets/3aff178b-6817-46b2-a299-678cf7d25a31)

## DNA Sequence Blast Search

### BLAST search inputs

To perform a BLAST search, please input both a DNA sequence and select a reference genome to search against.

An example search is shown below:


``` text title="DNA sequence"
>WAPO1
ATGAACCTACTGCCTCACCACCACCTGTCGCTGCCGTCTGGGCCTGGCCGCCGCCCCTCCTCTGCGGCGGAGGCGGTGGAGATGGACCCGCGCGTGTGGCGCCGCCTGCCGCAGCCGCTGCTGGACCGCGTGCTGGCGTTCCTCCCGACGCCGTCCTTCCTCCGCGCCCGCGCCGTCTGCCGCCGCTTCTACCACCTCCTCTTCTCCTCCCCGTTCCTCCACTCTCACCTCCTCCACTCCCCGCACCTCCCCTTCTTCGCCTTCGCCGTCCCCTCCGCCGGCCACCTCCTCCTCCTCGATCCCACCTCCCAGCCGCAGGGACCCTCCTGGTTCCTCCTCCCGCTCCCGATCCCAGGTCCCGCCGCGGGGTTCTCGCCGGCTCCCGCGTCCGCTGGCCTGCTGGCGTTCCTCTCCGACGCGTCCGGCCACAAGACGCTGCTCCTCGCCAACCCCATCACGCGCCTCCTCGCCGCGCTGCCGCTCGGCCCCACGCAGCGCCTCTCCCCCACCGTCGGCCTGGCCGCGGGGTCGACGTCCATCATCGCCGTCGTGGCTGGCGACGACCTCGTGTCCCCTTTCGCCGTCAAGAACATCTCCGTCGACACCTTCGTCGCCGACGCCGCCTCCGTCCCGTCCTCCGGCTTCTGGGCCCCCAGCTCCCTCCTGCCACGCCTGTCCTCCCTCGATCCTCGCGCCGGCATGGCCTTCGCCTCCGGAAGGTTCTACTGCATGAGCTCGTCGCCGTTCGCGGTTCTCGTGTTCGACGTGGCGGCGAACGTCTGGAGCAAGGTGCAGCCGCCGATGAGGCGGTTCCTGCAGTCGCCGGCGCTGGTCGAGCTCGGCGGCGGCAGGGAGGGCTCGGGCACCGCAAGGGTGGGGCTCGTCGCGTCCGTGGAGAAGAGCCGTCTCAGCGTGCCGCGGAGCGTGCGCGTCTGGACACTGCGCGGCAGAGGAGGCTCCGGCGGCGGCGGCGGCGCGTGGAGCGAGGTGGCGCGGATGCCGCAGGACGTGCACGCGCAGTTCGCGGCGGCGGAGGGCGGCCGCGGGTTCGAGTGCGCAGCGCACGGCGACTTCGTCGCGCTAGCGCCCCGCGGCGGGCCGGCAGCCGTGCCGGTGCCGACGACCGTGCTCGTGTTCGACTCGCGCCGCGACGAGTGGCGGTGGGCGCCACCATGCCCATACGTCGGGCACGGCATGGCCGCAGTGGTCAACGGCGGAGGCGCGGGGTTCCGGGTCCTCGCGTACGAGCCACGCCTGGCGACGCCGGCCATCGGCCTTCTGGACGCCACGACGCCGGTGGCTTTGCATGGGATGCATGGTTAG
```
``` text title="Reference genome"
Triticum aestivum - Genome - IWGSC_RefSeq_v2.1
```

### Optional inputs
The following search parameters can also be added to search to filter the returned results. 

| Search Parameter   | Description                                         |
| :----------------- | :-------------------------------------------------- |
| **Rows**           | The number of results returned from the search      |
| **Length of Hit**  | The **minimum** length of a match                   |
| **% Identity**     | The **minimum** similarity value for a match        |
| **% Coverage**     | The **minimum** coverage for a match                |


![BLAST search](https://github.com/user-attachments/assets/28b28fe6-bb04-42ce-9c8d-ce7305cdd24a)

### View Results 

To view results, the user can select/deselect the hits by clicking on square boxes under the view tab in the raw output data. Further, by clicking on the expand arrow (top right corner of BLAST output), the user can view the BLAST results in table format and can also select/deselect the samples.  

![BLAST results](https://github.com/user-attachments/assets/cf27a9fb-9851-451f-b2ed-f894c36c9919)