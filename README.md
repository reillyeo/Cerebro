This script finds all point mutations in a set of mutant genomes compared to a reference genome, and the genes in which they occur.

Requirements:
1. Input directory containing:
    - assembled mutant genomes in FASTA format
    - one reference genome (name must begin with 'ref') in FASTA format
    - gene annotations for the reference genome in GFF format
4. NUCmer and BEDtools installed and accessible in the PATH.
5. GNU parallel installed and accessible in the PATH.

Output: 9 column .tsv file containing information on all mutations in each mutant with respect to the reference genome (columns: Mutant, Reference, Mutation, StartPos, EndPos, Gene, Product, Feature_Type, Mutation_Size)
************************************************************
Developed by Eoghan Reilly eoghan@food.ku.dk
************************************************************
