#!/bin/bash

# Description: Script to convert all HEIC images in a Directory to JPG
# Note:
# 1. The directory leaves the original images intact.
# 2. The directory picks up only the HEIC images leaving other JPGs and the MP4 images intact.
# TODO:
# 1. Make SOURCE_DIRECTORY as a command line arguments.

# NO TRAILING PATH
SOURCE_DIRECTORY="/home/vikash/Downloads/Archive/Photos-HEIC"

FILES="${SOURCE_DIRECTORY}/*.heic"
for heic_file_path in $FILES
do
    # echo "HEIC Filepath ${heic_file_path}...."

    heic_base_filename=`basename "$heic_file_path"`
    # echo "HEIC Basename -------> $heic_base_filename"

    file_name_without_ext="${heic_base_filename%.*}"
    # extension="${heic_base_filename##*.}"
    # echo "Basename Without Extension -------> $file_name_without_ext"

    jpg_file_path="$SOURCE_DIRECTORY/$file_name_without_ext.jpg"
    # echo "JPG Filepath-------> $jpg_file_path"

    # Convert space to _
    new_jpg_file_path=${jpg_file_path// /_}

    # Convert the heic to jpg
    # Syntax: heiftojpeg [-v] [-s <max_dimension>] <input.heic> <output.jpg>
    echo "Converting ${heic_file_path} to ${new_jpg_file_path} ...."
    heiftojpeg "${heic_file_path}" "${new_jpg_file_path}"
done
