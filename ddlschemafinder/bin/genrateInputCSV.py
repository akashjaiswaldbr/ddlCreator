

#find the tables that are pii tagged

import argparse
import re
import csv
import itertools


# known changes needed to be done after DDL is genereted
## 1. Remove comma after opening bracket followed by CREATE TABLE line
## 2. Remove any ::, defaults set for columns
###Note - All of it can be done by CTRL+F and replace.


# Function to search for an exact match in a file
def search_exact_match_in_file(file_path, search_value):
    with open(file_path, 'r', encoding='latin-1') as file:
        file_contents = file.read()
        if search_value.lower() == file_contents.strip().lower():
            return True
    return False

def getMetadata(search_value,wf):

    piiFile = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/metadata/pii.csv'
    schemaMap = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/metadata/schemaMapping.csv'

    piisearchvalue = ['legacy_'+search_value, 'refine_'+search_value,'refine_'+search_value]

    pii = "no"
    with open(piiFile, 'r', newline='', encoding='utf-8') as csv_input_file_pii:
        csv_readerPii = csv.DictReader(csv_input_file_pii)

        for row in csv_readerPii:

            for v in piisearchvalue: 
                if row['table_name'].lower() == v.lower():
                    pii = row['database_name']
                    break
    
    schemaval=""
    with open(schemaMap, 'r', newline='', encoding='utf-8') as csv_input_file_schm:
        csv_readerSchm = csv.DictReader(csv_input_file_schm)

        for row in csv_readerSchm:
            if wf == row['WORKFLOW_NAME']:
                schemaval  =row['Target Schema']
                break
    
        if '_PRE' in search_value and pii == "no":
            schemaval ='raw'
        

    tgt_schma=""
    if pii != "no":
        tgt_schma=pii
    else:
        tgt_schma=schemaval


    return schemaval,pii,tgt_schma



def main():
    """

    :rtype: object
    """
    parser = argparse.ArgumentParser(description='Convert Oracle or Netezza data types to Databricks Delta data types.')
    
    parser.add_argument('wf_name', type=str, help='workflow name')
    args = parser.parse_args()

    print(args)

    input_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/source/ddlcreation/' + args.wf_name + ".csv"
    output_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/target/converterInputCSV/'+ args.wf_name + "_out.csv"

    search_column_name = 'tbl_list'
    results = []




    
    # Open the input CSV file for reading
    with open(input_csv_file, 'r', newline='', encoding='utf-8') as csv_input_file:
        csv_reader = csv.DictReader(csv_input_file)
        
        # Iterate through rows in the input CSV file
        for row in csv_reader:
            search_value = row[search_column_name]

            schema, pii, tgt_schema= getMetadata(search_value, args.wf_name)

            results.append({'wf_name': args.wf_name, 'table_name': search_value, 'nz_database': 'distinct_ddl','schema':schema, 'pii': pii, 'target_schema':tgt_schema})

    #print(results)

    
    # Write the results to the output CSV file
    with open(output_csv_file, 'w+', newline='', encoding='utf-8') as csv_output_file:
        fieldnames = ['wf_name','table_name', 'nz_database','schema', 'pii', 'target_schema']
        csv_writer = csv.DictWriter(csv_output_file, fieldnames=fieldnames)
        
        csv_writer.writeheader()
        csv_writer.writerows(results)



if __name__ == "__main__":
    main()
