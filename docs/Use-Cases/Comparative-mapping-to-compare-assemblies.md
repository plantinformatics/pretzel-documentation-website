# Comparative mapping to compare assemblies

This Use Case is useful when you want to compare different versions of a genome assembly or different genomes assemblies in a pan-genome.

To be able to compare assemblies in this way, positions of common features need to be defined in both assemblies.

In this example we will compare the IWGSC RefSeq v1.0 and v2.1 genome assemblies of the landrace Chinese Spring using SNP markers from the Infinium Wheat Barley 40K v1.1 BeadChip.

## Step 1: Load the position of markers in the first assembly

The dataset defining the positions of Infinium Wheat Barley 40K v1.1 BeadChip markers in IWGSC RefSeq v1.0 is named `Triticum aestivum - IWGSC_RefSeq_v1.0 - Markers - Wheat Barley 40k v1.1`. Find this by using the [Search Bar in the Explorer tab](https://docs.plantinformatics.io/Basic-Functions/Explore-tab/#searching-for-a-dataset).

Click the black plus arrow next to the dataset name to show available chromosomes. Click the green plus next to the chromosome of interest to load it into the view.

By default, the position of individual markers within the chromosome axis are not shown.

## Step 2: Load the position of markers in the second assembly

The dataset defining the positions of Infinium Wheat Barley 40K v1.1 BeadChip markers in IWGSC RefSeq v2.1 is named `Triticum aestivum - IWGSC_RefSeq_v2.1 - Markers - Wheat Barley 40k v1.1`. Find this by using the [Search Bar in the Explorer tab](https://docs.plantinformatics.io/Basic-Functions/Explore-tab/#searching-for-a-dataset).

Click the black plus arrow next to the dataset name to show available chromosomes. Click the green plus next to the chromosome of interest to load it into the view.

Green lines will be displayed between the relative positions of common markers.

## Step 3 (Optional): Show position of markers along the chromosomes

Split each of the axes as described in [Basic Functions - Axis Title menu layout](https://docs.plantinformatics.io/Basic-Functions/Axis-Title-menu-layout/#split-axis).

## Step 4 (Optional): Invert orientation of a chromosome

If the order of markers between chromosomes is flipped, [invert one of the axes](https://docs.plantinformatics.io/Basic-Functions/Axis-Title-menu-layout/#flip-axis).

