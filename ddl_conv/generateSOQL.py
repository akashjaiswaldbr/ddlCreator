import csv
import re

sf_table_list = ["AccountHistory",
                 "AssetHistory",
                 "AssignedResource",
                 "FSL__User_Territory__c",
                 "OperatingHours",
                 "Order",
                 "OrderHistory",
                 "OrderItemHistory",
                 "Outgoing_Message__c",
                 "PicklistValueInfo",
                 "Pricebook2",
                 "Pricebook2History",
                 "PricebookEntry",
                 "Product2",
                 "Product2History",
                 "Profile",
                 "PSVC_Bundle__c",
                 "PSVC_Bundle_Addon__c",
                 "PSVC_Bundle_Configuration__c",
                 "PSVC_Class_Session__c",
                 "PSVC_Customer_Pet__c",
                 "PSVC_Daily_Activity__c",
                 "PSVC_Employee_Group__c",
                 "PSVC_Employee_Group_Service_Types__c",
                 "PSVC_Exception_Hours__c",
                 "PSVC_Invoice__History",
                 "PSVC_Note__c",
                 "PSVC_Note__History",
                 "PSVC_Order_Product_Special__c",
                 "PSVC_Order_Product_Special__History",
                 "PSVC_Package_Product__c",
                 "PSVC_Pet_Vaccination__c",
                 "PSVC_Product_Bundle_Configuration__c",
                 "PSVC_Product_Special__c",
                 "PSVC_Redemption__c",
                 "PSVC_Service_Contract__c",
                 "PSVC_Service_Contract_Component__c",
                 "PSVC_Service_Location_Special__c",
                 "PSVC_Service_Text__c",
                 "PSVC_Service_Type_Group__c",
                 "PSVC_Service_Type_Group_Special__c",
                 "PSVC_Service_Type_Product__c",
                 "PSVC_Special__c",
                 "PSVC_Special__History",
                 "RecordType",
                 "ResourceAbsence",
                 "ResourceAbsenceHistory",
                 "ResourcePreference",
                 "ResourcePreferenceHistory",
                 "ServiceAppointmentHistory",
                 "ServiceResource",
                 "ServiceResourceHistory",
                 "ServiceResourceSkill",
                 "ServiceResourceSkillHistory",
                 "ServiceTerritory",
                 "ServiceTerritoryHistory",
                 "ServiceTerritoryMember",
                 "ServiceTerritoryMemberHistory",
                 "Skill",
                 "SkillRequirement",
                 "SkillRequirementHistory",
                 "TimeSlot",
                 "WorkOrderHistory",
                 "WorkOrderLineItemHistory",
                 "WorkType",
                 "WorkTypeHistory",
                 "Account",
                 "Asset",
                 "OrderItem",
                 "PSVC_Invoice__c",
                 "ServiceAppointment",
                 "User",
                 "WorkOrder",
                 "WorkOrderLineItem",
                 "PSVC_Schedule_Template__c",
                 ]
datatype_map = {
    'TINYINT': 'bigint',
    'BIT': 'bigint',
    'STRING': 'string',
    'DATETIME': 'timestamp',
    'boolean': 'boolean'
}

issue_table = ["PSVC_Order_Product_Special__history"]
fields = ['source_table', 'target_table', 'env', 'mode', 'soql', 'primary_key', 'schema']
with open(
        "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/salesforce_ddl/salesforce_config_all.csv",
        "a") as csvfile:
    csvwriter = csv.writer(csvfile)
    for table in sf_table_list:
        with open(
                "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/salesforce_ddl/DDLTable.csv",
                mode='r') as csv_file:
            csv_reader = csv.DictReader(csv_file)
            schema = []
            for row in csv_reader:
                if row["TABLE_NAME"] == table:
                    if row["DATA_TYPE_OPTION"] in datatype_map:
                        datatype = datatype_map.get(row["DATA_TYPE_OPTION"])
                    elif row["DATA_TYPE_OPTION"] == "SMALLINT":
                        datatype = "decimal" + "(" + row["src_prec"] + "," + row["src_scale"] + ")"
                        # datatype = "double"
                        # elif row["src_scale"] <= 9:
                        # datatype = "integer"
                        # elif 10 <= row["src_scale"] <= 18:
                        # datatype = "long"

                    elif row["DATA_TYPE_OPTION"] == "NUMERIC":
                        if row["src_scale"] != 0:
                            datatype = "decimal" + "(" + row["src_prec"] + "," + row["src_scale"] + ")"
                            # datatype = "double"
                            # elif row["src_scale"] <= 9:
                            # datatype = "integer"
                            # elif 10 <= row["src_scale"] <= 18:
                            # datatype = "long"
                        else:
                            if row["src_scale"] <= 2:
                                datatype = 'tinyint'
                            elif 3 <= row["src_scale"] <= 4:
                                datatype = 'smallint'
                            elif 5 <= row["src_scale"] <= 9:
                                datatype = 'int'
                            elif 10 <= row["src_scale"] <= 18:
                                datatype = 'bigint'
                            else:
                                datatype = "decimal" + "(" + row["src_prec"] + "," + row["src_scale"] + ")"

                    schema.append(tuple((row["COLUMN_NAME"], datatype)))
            with open(
                    "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/salesforce_ddl/sf2nz_log_file_mapping.csv",
                    mode='r') as csv_file_2:
                csv_reader_2 = csv.DictReader(csv_file_2)
                for row in csv_reader_2:
                    if row["sf_table_name"] == table:
                        print(row["sf_table_name"])
                        # if re.search(r'^' + table + r'$', row["sf_table_name"]):
                        # print(row["sf_table_name"])
                        with open(
                                "/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/salesforce_ddl/str_output_bin_files/" +
                                row[
                                    "filenames"] + "_stringoutput",
                                mode='r') as f:
                            ddl = f.read()
                            m = re.findall(r'(?s)SOQL\s+is\s*\[(.*?)\].', ddl)
                            for i, match in enumerate(m, 1):
                                if table in match:
                                    print(row["filenames"])
                                    # print("Match {0}: {1}".format(i, match))

                                    csvwriter.writerow((table, table, "dev", "full", match, "None", schema))

# Read the comfig csv created above and get row for a particular table name, and save as variables and pass it to the below function
## And then each pre files will call getPrismUtility()
