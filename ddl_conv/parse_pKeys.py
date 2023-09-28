import argparse
from convert_ddl import convert_ddl
import re
import csv


def main():
    """

    :rtype: object
    """
    parser = argparse.ArgumentParser(description='Convert Oracle or Netezza data types to Databricks Delta data types.')
    parser.add_argument('filename', type=str, help='The name of the input file')
    parser.add_argument('database_type', type=str, choices=['oracle', 'netezza'],
                        help='The type of database to convert from')
    parser.add_argument('environment', type=str, choices=['qa', 'prod'],
                        help='To decide which env bucket to create table on')
    args = parser.parse_args()

    with open(args.filename, 'r') as f:
        ddl = f.read()
        ddl_set = ddl.split(";")
        delete_words = ["\echo", 'unset', "\connect"]
        with open('/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/wf_prism_daily/pre_table_list_1',
                  newline='') as f:
            reader = csv.reader(f)
            table_list = list(reader)
            table_list = [num for sublist in table_list for num in sublist]
            print(table_list)
            for query in ddl_set:
                if 'ALTER TABLE' in query:
                    with open(
                            "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/wf_prism_daily/wf_prism_daily_PKEY_LIST_2.csv",
                            'a', newline='') as file:
                        writer = csv.writer(file)
                        table_name = ''.join(re.findall(r'ALTER TABLE\s+(\w+)', query))
                        if table_name in table_list:
                            pKeys = ''.join(re.findall(r"\((.*?)\)", query))
                            pkeyDelimited = re.sub(r",\s+", "|", pKeys)
                            writer.writerow([table_name, pkeyDelimited])


if __name__ == "__main__":
    main()
