# Search tab

## VCF Genotype Search

## Feature search

### VCF Search inputs
!!!note

    Only full names will be accepted by the feature search and there needs to be an exact match including capitalisation. Most features are usually stored in its capitalised format. 
 
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

To perform a BLAST seach, please input both a DNA sequence and select a reference genome to search against.

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

To view results, user can select/deselect the hits by clicking on square boxes under view tab in raw output data. Further, by clicking on the expand arrow (top right corner of BLAST output), user can view the BLAST results in table format and can also select/deslect the samples.  

![BLAST results](https://github.com/user-attachments/assets/cf27a9fb-9851-451f-b2ed-f894c36c9919)