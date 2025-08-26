# Cerebro

This script finds all point mutations in a set of mutant genomes compared to a reference genome, and the genes in which they occur.
If prokka .ffn file sequences are also provided, an output fasta of the mutated proteins is produced that can be used for functional annotation with eggnog mapper.

## Requirements:
1. Input directory containing:
    - assembled mutant genomes
        - format: *.fasta
    - one reference genome
        - format: ref*.fasta
    - gene annotations for the reference genome
        - format: *.gff
    - protein sequences corresponding to reference annotations (optional, for functional annotation)
        - format: *.ffn
4. NUCmer and BEDtools installed and accessible in the PATH.
5. GNU parallel installed and accessible in the PATH.

## Usage:
```text
Usage - cerebro [OPTIONS]

Options:
        -i input directory (default: current directory)
        -o output directory (default: cerebro_output)
        -t number of threads to use for parallel processing (default: 20)
        -f use this flag to also produce output fasta of mutated proteins for functional annotation
        -h display help message and usage information
```

## Output:
- 9 column .tsv file containing information on all mutations in each mutant with respect to the reference genome (columns: Mutant, Reference, Mutation, StartPos, EndPos, Gene, Product, Feature_Type, Mutation_Size)

- (if -f flag is used) A single fasta file containing the amino acid sequences of all the genomic features in which a mutation was found (can be uploaded to http://eggnog-mapper.embl.de/FESNOV for functional annotation)

## Extras:
The cerebro_merge_tables.sh script can be used to merge the output of eggnog mapper with the mutation summary table. For this script to work, the eggnog mapper annotation table must be named emapper_annotations.tsv

************************************************************
Developed by Eoghan Reilly eoghan@food.ku.dk
************************************************************
