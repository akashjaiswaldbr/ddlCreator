import argparse
from convert_ddl import convert_ddl
import re
import csv
import itertools


# known changes needed to be done after DDL is genereted
## 1. Remove comma after opening bracket followed by CREATE TABLE line
## 2. Remove any ::, defaults set for columns
###Note - All of it can be done by CTRL+F and replace.



def main():
    """

    :rtype: object
    """
    parser = argparse.ArgumentParser(description='Convert Oracle or Netezza data types to Databricks Delta data types.')
    # parser.add_argument('filename', type=str, help='The name of the input file')
    # parser.add_argument('nz_database', type=str, help='Netezza Database')
    parser.add_argument('database_type', type=str, choices=['oracle', 'netezza'],
                        help='The type of database to convert from')
    # parser.add_argument('environment', type=str,help='To decide which env bucket to create table on')
    parser.add_argument('folder', type=str,
                        help='To decide which env bucket to create table on')
    parser.add_argument('wf_name', type=str,
                        help='workflow name')

    # parser.add_argument('pii', type=str, help='if pii or not')
    args = parser.parse_args()
    # environment_list = args.environment.split(",")
    env_list = ['qa'] # ['dev', 'qa', 'prod']

    global wf_name
    wf_name=args.wf_name

    with open(
            "/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/table_to_bucket_mapping/table_bucket_list_mapping.csv",
            mode='r') as table_bucket_mapping_file:
        table_bucket_reader = csv.DictReader(table_bucket_mapping_file)
        table_bucket_mapping = {}
        for row in table_bucket_reader:
            key = "|".join([row["env"], row["pii"], row["schema"]])
            table_bucket_mapping[key] = row["bucket"]
        
        #print(table_bucket_mapping)

    non_exiting_tables = []
    for env in env_list:
        with open(
                "/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/wf_table_csv/" + args.wf_name + ".csv",
                mode='r') as csv_file:
            csv_reader = csv.DictReader(csv_file)
            for row in csv_reader:
                # filename = "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/nz_ddl/"+row["nz_database"]+"_TABLE_DDL.txt"\\
                filename = "/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/allDDLs/merged_output.txt"
                #print(row['table_name']+"????")
                with open(filename, 'r') as f:
                    ddl = f.read()
                    ddl_set = ddl.split(";")
                    for query in ddl_set:
                        if 'CREATE TABLE' in query:
                            if re.findall(rf"CREATE\s*TABLE\s*?{row['table_name']}[\s]+", query, re.IGNORECASE):
                                #print(row['table_name'])
                                joined_table_dets = "|".join([env, row["pii"], row["schema"]])
                                #print(joined_table_dets)
                                bucket = table_bucket_mapping[joined_table_dets]
                                add_metadata_to_ddl = """USING delta \nLOCATION '{0}{1}/{2}' \n""".format(
                                    bucket, args.folder, row['table_name'].lower())

                                query = re.sub('\/\*(\n.*?)*?\*\/', '', query, flags=re.MULTILINE)
                                # This regex removes any echo statements in the query
                                query = re.sub(r'\\echo', '', query, flags=re.MULTILINE)
                                # query = re.sub(r'\\echo (*)*?', '', query, flags=re.MULTILINE)
                                query_lines = query.split("\n")
                                # query_lines = query_lines.append("use " + row["dl_database"] + ";\n")

                                #print(query_lines)
                                #break
                                for line in query_lines:
                                    if env == "dev" or env == "qa":
                                        database = env + "_" + row["target_schema"]
                                    else:
                                        database = row["target_schema"]
                                    if row["pii"] != "no":
                                        schema_to_append = row["schema"] + "_"
                                    else:
                                        schema_to_append = ""

                                    converted_line = convert_ddl(line, args.database_type, schema_to_append,
                                                                 database) + "\n"
                                    
                                    #print(converted_line)
                                    global file_name
                                    file_name =  str(env) + "_" + str(args.wf_name)
                                    with open(
                                            "/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/workflowTmp/" + str(
                                                env) + "_" +
                                            str(args.wf_name) + ".txt", "a") as text_file:

                                       
                                        
                                        ddl = re.sub( r'\(n,', r'(', converted_line)
                                        ddl = re.sub("\);", ")\n" + add_metadata_to_ddl.strip() + ";", ddl)
                                        #ddl = re.sub( '\(\n,', '(', ddl) ,
                                        
                                        ddl_txt = str(ddl)

                                        #print(ddl_txt.split("\n",1))

                                    

                                        #if schema_to_append == "":
                                        text_file.write(ddl)




def cleanDDLs(wf_name,file_name):
    
    print(wf_name, file_name)
    with open("/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/workflowTmp/"+file_name+".txt", "r") as f:
        

        ddl = f.read()

        cleanddl = re.sub('\(\n,','(\n',ddl)
        cleanddl = re.sub('default\s+.*\n','\n',cleanddl)

        #print(cleanddl)

        with open("/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/workflows/"+file_name+".txt", "w+") as t:

            t.write(cleanddl)

if __name__ == "__main__":
    main()
    cleanDDLs(wf_name,file_name)