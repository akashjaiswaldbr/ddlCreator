

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

def getCommand(wf, folder):



    objectexport = r"objectexport -n " + wf + r" -o WORKFLOW -f " + folder + r" -b -r -m -s -u \\filesrv01.ssg.petsmart.com\ajaiswal\V2\Desktop\\" + wf + r".xml"





    bbanalyze = (
    r"mkdir C:\Users\ajaiswal\Documents\Analyzer\bbanalyzer\aaa\\" + wf +
    " && mv C:\\Users\\ajaiswal\\Documents\\Analyzer\\bbanalyzer\\aaa\\" +
    wf + ".xml C:\\Users\\ajaiswal\\Documents\\Analyzer\\bbanalyzer\\aaa\\" +
    wf+ " && bbanalyzer.exe -c Databricks_BB_analyzer_Key_2023.txt -t INFA -i C:\\Users\\ajaiswal\\Documents\\Analyzer\\bbanalyzer\\aaa\\" +
    wf + ".xml -r C:\\Users\\ajaiswal\\Documents\\Analyzer\\bbanalyzer\\aaa\\" +
    wf + "\\" + wf + ".xlsx -Q NETEZZA"
)



    return objectexport, bbanalyze



def main():
    """

    :rtype: object
    """

    input_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/source/extraction/extraction.csv'
    output_csv_file = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/target/extraction/extraction.csv'

    search_column_name = 'tbl_list'
    results = []

    
    # Open the input CSV file for reading
    with open(input_csv_file, 'r', newline='', encoding='utf-8') as csv_input_file:
        csv_reader = csv.DictReader(csv_input_file)
        
        # Iterate through rows in the input CSV file
        for row in csv_reader:
            wf = row['wf']
            folder = row['folder']

            objectexport, bbanalyze= getCommand(wf,folder)

            results.append({'name': wf, 'objectexport': objectexport, 'bbanalyze': bbanalyze})

    #print(results)

    
    # Write the results to the output CSV file
    with open(output_csv_file, 'w+', newline='', encoding='utf-8') as csv_output_file:
        fieldnames = ['name','objectexport', 'bbanalyze']
        csv_writer = csv.DictWriter(csv_output_file, fieldnames=fieldnames)
        
        csv_writer.writeheader()
        csv_writer.writerows(results)



if __name__ == "__main__":
    main()
