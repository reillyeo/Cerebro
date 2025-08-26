#!/bin/bash

# remove all lines from file that begin with ##
sed -i '/^##/d' emapper.annotations.tsv

# run rscript to merge tables
merge_tables.R
