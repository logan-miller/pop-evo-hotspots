#!/bin/bash -l
#SBATCH --job-name=sgdp_download
#SBATCH --output=/data/mschatz1/lmill153/pop-evo-hotspots/logs/sgdp_download.log
#SBATCH --error=/data/mschatz1/lmill153/pop-evo-hotspots/logs/sgdp_download.err
#SBATCH --partition=shared  # Adjust partition if needed
#SBATCH --time=36:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=2
#SBATCH --account=mschatz1


bash /data/mschatz1/lmill153/pop-evo-hotspots/scripts/download_sgdp.sh
