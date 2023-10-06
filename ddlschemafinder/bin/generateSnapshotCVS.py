

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
    pkmap = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/metadata/pk_map.csv'

    
    #source_schema & primary_key
    source_schema=""
    primary_key=""
    with open(pkmap, 'r', newline='',  encoding='utf-8') as csv_input_file_pk:
        csv_readerPK = csv.DictReader(csv_input_file_pk)

        for row in csv_readerPK:

            if row['table_name'].lower() == search_value.lower():
                source_schema = row['db']
                primary_key=row['key']
                break

   
    #snapshot_target_schema

    piisearchvalue = ['legacy_'+search_value, 'refine_'+search_value,'raw_'+search_value]
    snapshot_target_schema=""
    test_target_table=""
    pii=""
    with open(piiFile, 'r', newline='', encoding='utf-8') as csv_input_file_pii:
        csv_readerPii = csv.DictReader(csv_input_file_pii)

        for row in csv_readerPii:

            for v in piisearchvalue: 

                if str(row['table_name'].lower()).strip() == str(v.lower()).strip():
                    snapshot_target_schema = 'data_harness_'+row['database_name']
                    test_target_table= v
                    pii=row['database_name']
                    break        
                
    if snapshot_target_schema == "" :
        snapshot_target_schema = 'nzmigration'
        test_target_table= search_value


    with open(schemaMap, 'r', newline='', encoding='utf-8') as csv_input_file_schm:
        csv_readerSchm = csv.DictReader(csv_input_file_schm)

        for row in csv_readerSchm:

            if pii !="":
                test_target_schema = 'qa_'+pii
            elif wf.lower() == row['WORKFLOW_NAME'].lower():
                
                test_target_schema  = 'qa_'+ row['Target Schema']
                #print(wf, row['WORKFLOW_NAME'],test_target_schema)
                break
          
    
        if '_PRE' in search_value and  pii =="":
            test_target_schema ='qa_raw'
    




    return source_schema, snapshot_target_schema, test_target_schema, test_target_table, primary_key



def main():
    """

    :rtype: object
    """
    parser = argparse.ArgumentParser(description='Convert Oracle or Netezza data types to Databricks Delta data types.')
    
    parser.add_argument('wf_name', type=str, help='workflow name')
    args = parser.parse_args()

    #print(args)

    input_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/source/snapshot/' + args.wf_name + ".csv"
    output_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/target/snapshot/'+ args.wf_name + "_out.csv"

    search_column_name = 'tbl_list'
    results = []




    
    # Open the input CSV file for reading
    with open(input_csv_file, 'r', newline='', encoding='utf-8') as csv_input_file:
        csv_reader = csv.DictReader(csv_input_file)
        
        # Iterate through rows in the input CSV file
        for row in csv_reader:
            search_value = row[search_column_name]

            source_schema, snapshot_target_schema, test_target_schema, test_target_table, primary_key = getMetadata(search_value, args.wf_name)

            results.append({'name': search_value, 'source_schema': source_schema, 'source_table': search_value, 'snapshot_target_schema': snapshot_target_schema,'snapshot_target_name':search_value, 'source_filter': '1=1', 'test_target_schema':test_target_schema, 'test_target_table' : test_target_table, 'primary_key': primary_key, 'validation_filter':'','is_input':''})

    #print(results)

    
    # Write the results to the output CSV file
    with open(output_csv_file, 'w+', newline='', encoding='utf-8') as csv_output_file:
        fieldnames = ['name','source_schema', 'source_table','snapshot_target_schema', 'snapshot_target_name', 'source_filter', 'test_target_schema','test_target_table','primary_key','validation_filter','is_input']
        csv_writer = csv.DictWriter(csv_output_file, fieldnames=fieldnames)
        
        csv_writer.writeheader()
        csv_writer.writerows(results)



if __name__ == "__main__":
    main()
