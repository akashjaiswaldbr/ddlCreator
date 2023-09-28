#!/bin/bash

# Specify the folder containing the files to merge
folder_path="/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/nz_ddl/"

# Specify the target file where the merged content will be saved
target_file="/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/allDDLs/merged_output.txt"

# Use the 'cat' command to merge the contents of all files in the folder
cat "${folder_path}"/* > "${target_file}"

echo "Files in '${folder_path}' merged into '${target_file}'."
