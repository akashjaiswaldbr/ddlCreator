import re

with open(
        "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/salesforce_ddl/s_m_sds_account_history_pre.log_strings_output",
        mode='r') as f:
    ddl = f.read()
    # res = re.findall(r'\(.*?\)', test_str)
    m = re.findall(r'(?s)SOQL\s+is\s*\[(.*?)\].', ddl)
    # Iterate through the list of table that we need to extract the SOQL for and write

    table = 'AccountHistory '
    for i, match in enumerate(m, 1):
        if table in match:
            print("Match {0}: {1}".format(i, match))
