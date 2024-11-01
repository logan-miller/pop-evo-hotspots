#!/bin/bash

# Define directories
base_dir="/data/mschatz1/lmill153/pop-evo-hotspots"
download_dir="$base_dir/data/SGDP/SGDP_GRCh37"
links_file="$base_dir/data/SGDP/sgdp_tbi_links.txt"

# Activate the Conda environment that has aria2c installed
source /data/mschatz1/lmill153/miniforge3/bin/activate
conda activate pop_evo

# Create the download directory if it doesn't exist
mkdir -p $download_dir

# Download all files listed in sgdp_vcf_links.txt sequentially using aria2c
aria2c -i "$links_file" -d "$download_dir"
