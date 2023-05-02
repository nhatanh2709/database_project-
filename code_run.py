import pandas as pd
path = input("Path:")
path_input = path + "\\HOCTAP.xlsx"
path_output = path + "\\HOCTAP.sql"
file_sql = open(path_output, mode = 'w', encoding = "utf-8-sig")
# print(path_output)
# read file
with pd.ExcelFile(path_input) as excel:
	cap = pd.read_excel(excel,"BAC",header = None)
	loai_truong = pd.read_excel(excel,"LOAI_TRUONG",header = None)
	loai_hinh = pd.read_excel(excel,"LOAI_HINH",header = None)
	phong_gd = pd.read_excel(excel,"PHONG_GD",header = None)
	ds_truong = pd.read_excel(excel,"DS_TRUONG",header = None)

file_sql.write("use truonghoc\n")
# insert data into BAC
for i in range(1,cap.shape[0]):
	row = cap.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO BAC VALUE({0},{1});\n".format(row[0],row[1]))


# insert data into LOAI_TRUONG
for i in range(1,loai_truong.shape[0]):
	row = loai_truong.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO LOAI_TRUONG VALUE({0},{1});\n".format(row[0],row[1]))


# insert data into LOAI_HINH
for i in range(1,loai_hinh.shape[0]):
	row = loai_hinh.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO LOAI_HINH VALUE({0},{1});\n".format(row[0],row[1]))

# insert data into PHONG_GD
for i in range(1,phong_gd.shape[0]):
	row = phong_gd.iloc[i]
	for i in range(len(row)):
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO PHONG_GD VALUE({0},{1},{2});\n".format(row[0],row[1],row[2]))

# insert data into DSTRUONG
for i in range(1,ds_truong.shape[0]):
	row = ds_truong.iloc[i]
	for i in range(len(row)):
		row[i] = str(row[i])
		if row[i] == "nan":
			row[i] = "NULL"
		else:
			row[i] = ("N\'" + row[i].strip() + "\'")
	file_sql.write("INSERT INTO DSTRUONG VALUE({0},{1},{2},{3},{4},{5},{6},{7});\n".format(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7]))
