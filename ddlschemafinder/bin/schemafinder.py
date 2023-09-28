import os
import csv


# Function to search for a value in a file
def search_value_in_file(file_path, search_value):
    with open(file_path, 'r', encoding='latin-1') as file:
        file_contents = file.read()
        if search_value in file_contents:
            return True
    return False

# Function to search for an exact match in a file
def search_exact_match_in_file(file_path, search_value):
    with open(file_path, 'r', encoding='latin-1') as file:
        file_contents = file.read()
        if search_value == file_contents.strip():
            return True
    return False

# Folder containing files to search
folder_path = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/allDDLs/'

# Input CSV file
input_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/source/wf_Cashoffice_LP.csv'

# Output CSV file
output_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/target/wf_Cashoffice_LP.csv'

# Name of the column in the input CSV file containing values to search
search_column_name = 'tbl_list'

# Initialize an empty list to store results
results = []

# Open the input CSV file for reading
with open(input_csv_file, 'r', newline='', encoding='utf-8') as csv_input_file:
    csv_reader = csv.DictReader(csv_input_file)
    
    # Iterate through rows in the input CSV file
    for row in csv_reader:
        search_value = row[search_column_name]
        
        # Iterate through files in the folder
        for filename in os.listdir(folder_path):
            file_path = os.path.join(folder_path, filename)
            
            # Search for the exact match in the file
            if search_value_in_file(file_path, search_value):
                results.append({'Value': search_value, 'File Name': filename})

# Write the results to the output CSV file
with open(output_csv_file, 'w', newline='', encoding='utf-8') as csv_output_file:
    fieldnames = ['Value', 'File Name']
    csv_writer = csv.DictWriter(csv_output_file, fieldnames=fieldnames)
    
    csv_writer.writeheader()
    csv_writer.writerows(results)

print("CSV file created with search results for exact matches.")
