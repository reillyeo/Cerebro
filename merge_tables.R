#!/usr/bin/Rscript

# load necessary libraries
library(tidyverse)

# Load data
mutation_data <- read_tsv("mutations.tsv")
annotation_data <- read_tsv("emapper.annotations.tsv") %>% rename(Locus_Tag = "#query")

merged_data <- mutation_data %>% left_join(annotation_data, by = "Locus_Tag",unmatched = "drop")

# save merged data table as tsv file
write_tsv(merged_data, "mutations_annotated.tsv")