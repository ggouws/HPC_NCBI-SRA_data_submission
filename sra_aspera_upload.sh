#!/bin/bash

#SBATCH --job-name=sra_aspera_upload
#SBATCH --output=sra_aspera_upload.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=24:00:00

usage="$(basename "$0") [-D directory of data to upload] [-K path to the Aspera upload key] [-U path to the remote server and location for upload] \n
Script for the upload of sequence data to the NCBI SRA using AsperaConnect. \n 
The user MUST supply the directory of data to be uploaded, the absolute path to the Aspera upload key and the path to the server and upload location. \n
Where:
    -D  directory containing raw data files to be uploaded
    -K  the aboslute path to the Aspera upload key
    -U  the address/url of the remote server and location to which data will be uploaded. \n\n\n"

## parse arguments
while getopts D:K:U: flag
do
  	case "${flag}" in
		D) directory=${OPTARG};;
                K) key=${OPTARG};;
                U) location=${OPTARG};;
        esac
done

## Check arguments and comment if missing

if [ -z "$directory" ] || [ -z "$key" ] || [ -z "$location" ]; then
	echo -e "\nERROR: Required arguments are missing."

	[ -z "" $directory ] && echo " -D (directory of raw data) is required"
	[ -z "" $key ] && echo " -K (key path) is required"
	[ -z "" $location ] && echo " -U (upload location) is required"

	echo -e "\n$usage"
	exit 1
fi

## Load bash profile and activate aspera conda environment
source ~/.bash_profile
conda activate aspera 

ascp -i "$key" -QT -l100m -k1 -d "$directory" "$location"