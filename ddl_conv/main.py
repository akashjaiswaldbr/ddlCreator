import argparse
from convert_ddl import convert_ddl
import re


def main():
    """

    :rtype: object
    """
    parser = argparse.ArgumentParser(description='Convert Oracle or Netezza data types to Databricks Delta data types.')
    parser.add_argument('filename', type=str, help='The name of the input file')
    parser.add_argument('database_type', type=str, choices=['oracle', 'netezza'],
                        help='The type of database to convert from')
    args = parser.parse_args()

    with open(args.filename, 'r') as f:
        ddl = f.read()
        ddl_set = ddl.split("\n")
        with open("/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/ddl_removed_echo.txt", "a") as text_file:
            for line in ddl_set:
                #print(line)
                delete_words = ["\echo", 'unset', "\connect"]
                if not any(delete_word in line for delete_word in delete_words):
                    print(line)
                    print("##")
                    text_file.write(line)
                    text_file.write("\n")
    with open("/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/ddl_removed_echo.txt", 'r') as f:
        ddl = f.read()
        ddl_set = ddl.split(";")
        for line in ddl_set:
            delta_ddl = convert_ddl(line, args.database_type)
            with open("/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/intermmediate_ddl_delta.txt", "a") as text_file:
                text_file.write(delta_ddl)
                text_file.write("\n")
            with open("/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/intermmediate_ddl_delta.txt", "r") as f:
                ddl = f.read()
                new_ddl = re.sub("\(\s+,", "(",ddl )
            with open("/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/converted_pilot_delta_ddls.txt", "w") as text_file:
                text_file.write(new_ddl)


if __name__ == "__main__":
    main()





