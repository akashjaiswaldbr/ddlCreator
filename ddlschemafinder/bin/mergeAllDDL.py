import os
import re

# Function to extract and clean DDL statements from a file
def extract_and_clean_ddl_from_file(file_path):
    ddl_statements = []
    with open(file_path, 'r', encoding='latin-1') as file:
        ddl_block = ''
        inside_ddl = False

        for line in file:
            line = line.strip()

            if not line:
                continue

            if line.startswith(("CREATE", "ALTER", "DROP", "COMMENT")):
                ddl_block = line
                inside_ddl = True
            elif inside_ddl:
                ddl_block += ' ' + line

                if line.endswith(';'):
                    # Remove extra whitespace with a single space
                    #ddl_block = re.sub(r'\s+', ' ', ddl_block)

                    ddl_statements.append(ddl_block)
                    ddl_block = ''
                    inside_ddl = False

    return ddl_statements

# Folder containing DDL files
folder_path = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddls/nz_ddl/'

# Target file to save distinct and cleaned DDL statements
target_file_path = '/Users/akash.jaiswal/projects/PetSmart/ddl_convertor-main/ddlCreator/ddlschemafinder/lib/allDDLs/distinct_ddl.sql'

# Set to store distinct DDL statements
distinct_ddl_statements = set()

# Iterate through files in the folder
for filename in os.listdir(folder_path):
    file_path = os.path.join(folder_path, filename)

    # Extract and clean DDL statements from the file
    ddl_statements = extract_and_clean_ddl_from_file(file_path)

    # Add distinct DDL statements to the set
    distinct_ddl_statements.update(ddl_statements)

# Write the distinct and cleaned DDL statements to the target file
with open(target_file_path, 'w', encoding='utf-8') as target_file:
    for ddl_statement in distinct_ddl_statements:
        target_file.write(ddl_statement + '\n')

print(f"Distinct and cleaned DDL statements merged and saved to '{target_file_path}'.")

