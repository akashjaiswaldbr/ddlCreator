import json
import csv


with open('/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/json/subtask.json', 'r+') as subtask:
    data = json.load(subtask)
    with open('/Users/pooja.shekhar/Documents/Petsmart/ddl_convertor-main/ddls/set_I_P_tables.csv') as f:
        reader = csv.reader(f, delimiter=',')
        table_list = list(reader)
        table_list = [num for sublist in table_list for num in sublist]
        listObj = []
        for table in table_list:
            print(table)
            data1 = data
            #print(data1)
            result = 'm_WM_' + '_'.join(elem.capitalize() for elem in table.split("_"))
            task_key = 's_WM_' + '_'.join(elem.capitalize() for elem in table.split("_"))
            scriptName = "Datalake/WMS/WMS_TO_SCDS_DAILY/notebooks/" + result+".py"
            data1["task_key"] = f"{task_key}"
            data1['spark_python_task']['python_file'] = f"{scriptName}"
            data1['job_cluster_key'] = "wms_to_scds_daily_cluster"
            #print(data1)
            listObj.append(data1)
            #print(listObj)
            with open('job.json', 'a') as json_file:
                json.dump(data1, json_file,
                      indent=4,
                      separators=(',', ': '))
    #f.seek(0)        # <--- should reset file position to the beginning.
    #json.dump(data, f, indent=4)
    #f.truncate()     # remove remaining part
