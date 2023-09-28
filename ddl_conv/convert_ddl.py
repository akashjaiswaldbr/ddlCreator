oracle_to_delta_datatype = {
    'CHAR': 'STRING',
    'VARCHAR2': 'STRING',
    'NUMBER': 'DOUBLE',
    'DATE': 'TIMESTAMP',
    'TIMESTAMP': 'TIMESTAMP',
    'CLOB': 'STRING',
    'BLOB': 'BINARY'
}

netezza_to_delta_datatype = {
    'BOOL': 'BOOLEAN',
    'BOOLEAN': 'BOOLEAN',
    'CHAR': 'STRING',
    'CHARACTER': 'STRING',
    'CHAR(n)': 'STRING',
    'CHARACTER(n)': 'STRING',
    'VARCHAR': 'STRING',
    'CHARACTER VARYING': 'STRING',
    'VARCHAR(n)': 'STRING',
    'CHARACTER VARYING(n)': 'STRING',
    'CHAR VARYING(n)': 'STRING',
    'NCHAR': 'STRING',
    'NATIONAL CHARACTER': 'STRING',
    'NATIONAL CHAR(n)': 'STRING',
    'NCHAR(size)': 'STRING',
    'NVARCHAR': 'STRING',
    'NATIONAL CHARACTER VARYING': 'STRING',
    'CHAR VARYING': 'STRING',
    'NATIONAL CHAR VARYING(n)': 'STRING',
    'NATIONAL CHARACTER VARYING(n)': 'STRING',
    'NVARCHAR(n)': 'STRING',
    'DATE': 'DATE',
    'TIMESTAMP': 'TIMESTAMP',
    'DATETIME': 'TIMESTAMP',
    'TIME': 'TIMESTAMP',
    'TIME WITHOUT TIME ZONE': 'TIMESTAMP',
    'TIME WITH TIME ZONE': 'TIMESTAMP',
    'TIMETZ': 'TIMESTAMP',
    'NUMERIC(p,s)': 'DECIMAL(p,s)',
    'NUMERIC': 'DECIMAL',
    'DEC': 'DECIMAL',
    'DEC(p,s)': 'DECIMAL(p,s)',
    'REAL': 'FLOAT',
    'FLOAT4': 'FLOAT',
    'DOUBLE PRECISION': 'DOUBLE',
    'DOUBLE': 'DOUBLE',
    'FLOAT': 'FLOAT',
    'FLOAT(p)': 'FLOAT',
    'FLOAT8': 'FLOAT',
    'INTEGER': 'INT',
    'INT': 'INT',
    'INT4': 'INT',
    'BYTEINT': 'TINYINT',
    'INT1': 'TINYINT',
    'SMALLINT': 'SMALLINT',
    'INT2': 'SMALLINT',
    'BIGINT': 'BIGINT',
    'INT8': 'BIGINT',

}

import re


def convert_ddl(ddl, database_type, schema_to_append, target_schema):
    """

    :param ddl:
    :param database_type:
    :return:
    """
    # Split DDL into lines and iterate over each line
    ddl_lines = ddl.split('\n')
    new_ddl_lines = []
    # datatype_map = oracle_to_delta_datatype
    if database_type == 'oracle':
        datatype_map = oracle_to_delta_datatype
    elif database_type == 'netezza':
        datatype_map = netezza_to_delta_datatype
    else:
        raise ValueError(f"Unsupported database type: {database_type}")
    for line in ddl_lines:
        # Split each line into tokens
        line = line.strip()
        if " NATIONAL " in line:
            if re.search(r"NATIONAL\s+CHARACTER\s*VARYING\(\d+\)", line, re.IGNORECASE):
                tokens = re.split(r"NATIONAL\s+CHARACTER\s*VARYING\s*\(\d+\)", line, flags=re.IGNORECASE)
                datatype = "STRING"
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
                new_ddl_lines.append(' '.join(tokens))
            elif re.search(r"NATIONAL\s+CHARACTER\s*VARYING\s*", line, re.IGNORECASE):
                tokens = re.split(r"NATIONAL\s+CHARACTER\s*VARYING\s*", line, flags=re.IGNORECASE)
                datatype = "STRING"
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
                new_ddl_lines.append(' '.join(tokens))
            elif re.search(r"NATIONAL\s+CHARACTER\s*", line, re.IGNORECASE):
                tokens = re.split(r"NATIONAL\s+CHARACTER\s*", line, flags=re.IGNORECASE)
                datatype = "STRING"
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
                new_ddl_lines.append(' '.join(tokens))
            elif re.search(r"NATIONAL\s+CHAR\s*VARYING\s*\(\d+\)", line, re.IGNORECASE):
                tokens = re.split(r"NATIONAL\s+CHAR\s*VARYING\s*\(\d+\)", line, flags=re.IGNORECASE)
                datatype = "STRING"
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
                new_ddl_lines.append(' '.join(tokens))
            elif re.search(r"NATIONAL\s+CHAR\s*\(\d+\)", line, re.IGNORECASE):
                tokens = re.split(r"NATIONAL\s+CHAR\s*\(\d+\)", line, flags=re.IGNORECASE)
                datatype = "STRING"
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
                new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"CHARACTER\s+VARYING\s*\(\s*\d+\s*\)", line, re.IGNORECASE):
            tokens = re.split(r"CHARACTER\s+VARYING\s*\(\s*\d+\s*\)", line, flags=re.IGNORECASE)
            datatype = "STRING"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"CHARACTER\s+VARYING\s*", line, re.IGNORECASE):
            tokens = re.split(r"CHARACTER\s+VARYING\s*", line, flags=re.IGNORECASE)
            datatype = "STRING"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
            # print(new_ddl_lines)
        elif re.search(r"VARCHAR\s+\(\d+\)", line, re.IGNORECASE):
            tokens = re.split(r"VARCHAR\s+\(\d+\)", line, flags=re.IGNORECASE)
            datatype = "STRING"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
            # print(new_ddl_lines)
        elif re.search(r"CHAR\(\d+\)", line, re.IGNORECASE):
            tokens = re.split(r"CHAR\(\d+\)", line, flags=re.IGNORECASE)
            datatype = "STRING"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"CHARACTER\(\d+\)", line, re.IGNORECASE):
            tokens = re.split(r"CHARACTER\(\d+\)", line, flags=re.IGNORECASE)
            datatype = "STRING"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"TIMESTAMP", line, re.IGNORECASE):
            tokens = re.split(r"TIMESTAMP", line, flags=re.IGNORECASE)
            datatype = "TIMESTAMP"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"TIME\s+WITHOUT\s*TIME\s*ZONE\s*", line, re.IGNORECASE):
            tokens = re.split(r"TIME\s+WITHOUT\s*TIME\s*ZONE\s*", line, flags=re.IGNORECASE)
            datatype = "TIMESTAMP"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"TIME\s+WITH\s*TIME\s*ZONE\s*", line, re.IGNORECASE):
            tokens = re.split(r"TIME\s+WITH\s*TIME\s*ZONE\s*", line, flags=re.IGNORECASE)
            datatype = "TIMESTAMP"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"\sDATE\s", line, re.IGNORECASE):
            tokens = re.split(r"\sDATE\s", line, flags=re.IGNORECASE)
            datatype = "DATE"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"DOUBLE\s+PRECISION\s*", line, re.IGNORECASE):
            tokens = re.split(r"DOUBLE\s+PRECISION\s*", line, flags=re.IGNORECASE)
            datatype = "DOUBLE"
            tokens.insert(0, ",")
            tokens.insert(2, datatype)
            if "NULL" in tokens[-1]:
                a = "NOT NULL"
                tokens.insert(3, a)
            tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
            tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
            tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif re.search(r"NUMERIC\(\d+,\d+\)", line, re.IGNORECASE):
            pattern_scale0 = re.compile(r"\(\d+,0\)")
            if pattern_scale0.findall(line) == [] or int(
                    pattern_scale0.findall(line)[0].split(",")[0].split("(")[1]) > 18:
                tokens = re.split(r"NUMERIC\(\d+,\d+\)", line, flags=re.IGNORECASE)
                pattern = re.compile(r"\(\d+,\d+\)")
                datatype = 'DECIMAL' + ''.join(pattern.findall(line))
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            else:
                tokens = re.split(r"NUMERIC\(\d+,\d+\)", line, flags=re.IGNORECASE)
                datatype = ''
                if int(pattern_scale0.findall(line)[0].split(",")[0].split("(")[1]) <= 2:
                    datatype = 'TINYINT'
                elif 3 <= int(pattern_scale0.findall(line)[0].split(",")[0].split("(")[1]) <= 4:
                    datatype = 'SMALLINT'
                elif 5 <= int(pattern_scale0.findall(line)[0].split(",")[0].split("(")[1]) <= 9:
                    datatype = 'INT'
                elif 10 <= int(pattern_scale0.findall(line)[0].split(",")[0].split("(")[1]) <= 18:
                    datatype = 'BIGINT'
                tokens.insert(0, ",")
                tokens.insert(2, datatype)
                if "NULL" in tokens[-1]:
                    a = "NOT NULL"
                    tokens.insert(3, a)
                tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                tokens[-1] = tokens[-1].replace("NOT NULL", "").replace(",", "") + "\n"
            new_ddl_lines.append(' '.join(tokens))
        elif "(" == line.strip():
            new_ddl_lines.append(line)
        elif ")" == line.strip():
            new_ddl_lines.append(line + ";" + "\n")
        elif "DISTRIBUTE" in line:
            new_ddl_lines.append("--" + line + "\n")
        elif "ORGANIZE" in line:
            new_ddl_lines.append("--" + line + "\n")
        elif "ALTER" in line or "ADD CONSTRAINT" in line or "PRIMARY KEY" in line or " PRIMARY KEY" in line:
            new_ddl_lines.append("--" + line + "\n")
        elif "CREATE TABLE" in line:
            tokens = re.split(r"CREATE TABLE", line, flags=re.IGNORECASE)
            table_name = tokens[1]
            tokens.pop(1)
            tokens.insert(0, "use " + target_schema + ";" + "\n")
            tokens.insert(1, "CREATE TABLE")

            tokens.insert(2, schema_to_append + table_name.strip())
            new_ddl_lines.append(' '.join(tokens))
        elif line.rstrip() == "":
            new_ddl_lines.append("")
        else:
            # if ddl_lines.index(line) == 1:
            #    tokens = line.strip().split()
            #    tokens.insert(0, "")
            if line == "\n":
                new_ddl_lines.append("")
            else:
                tokens = line.strip().split()
                tokens.insert(0, ",")
            # tokens[0] = "\t" + tokens[0]
            if len(tokens) >= 3:
                datatype = tokens[2].split('(')[0].split(',')[0]
                if datatype.upper() in datatype_map:
                    tokens[2] = datatype_map[datatype.upper()]
                else:
                    new_ddl_lines.append("--" + line)
                if "," in tokens[-1]:
                    tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                    tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                    tokens[-1] = re.sub(",", "", tokens[-1]) + "\n"
                else:
                    tokens[-1] = re.sub(r'::.+?,', "", tokens[-1])
                    tokens[-1] = re.sub(r'::.+?"', "", tokens[-1])
                    tokens[-1] = tokens[-1] + "\n"
            else:
                new_ddl_lines.append("--" + line + "\n")
            new_ddl_lines.append(' '.join(tokens))

    # for line in new_ddl_lines[2:3]:
    # print(''.join(new_ddl_lines[2:3]))
    # new_ddl_lines[2:3] = ''.join(new_ddl_lines[2:3])

    # print(ddl_lines[2:3])

    return ' '.join(new_ddl_lines)
    # else:
    #    return ' '.join(new_ddl_lines).join(";)
