# -*- coding: utf-8 -*- 
def readfile(filename):
	import csv

	with open(filename,'rb') as f:
		reader = csv.reader(f)
		rows = [row for row in reader]
		lens = len(rows[0])
		columns = []
		column = []
		for i in range(0,lens):
			column = [col[i] for col in rows]
			columns.extend([column])
			# print column
		# print '\n=====\n'
	f.close()
	return columns

def read_select(filename):
	with open(filename) as f:
		for line in f:
			nums = line.split(',')
			nums = map(int, nums)
			return nums

def write_csv(filename, list_towrite):
	import csv
	with open(filename,'w') as f:
		f_csv = csv.writer(f)
		f_csv.writerows(list_towrite)
	f.close()

def select(datafile,outputfile,selector):
	columns_toselect = read_select(selector)
	columns_all = readfile(datafile)
	new_set=[]
	for i in columns_toselect:
		new_set.extend([columns_all[i]])
	zipped = zip(*new_set)
	write_csv(outputfile,zipped)
	

'''
Main
'''
feature_number = 200
inputfile1="colon_cf_tf.csv"
inputfile2="leu_cf_tf.csv"
outputfile1="datafiles/MaxRel_tf/colon_con_max_" + str(feature_number) +".csv"
outputfile2="datafiles/mRMR_MIQ/colon_c_Q_" + str(feature_number) +".csv"
outputfile3="datafiles/MaxRel_tf/leu_con_max_" + str(feature_number) +".csv"
outputfile4="datafiles/mRMR_MIQ/leu_c_Q_" + str(feature_number) +".csv"
selectfile1="MaxRel_select_c.txt"
selectfile2="mRMR_select_c.txt"
selectfile3="MaxRel_select_l.txt"
selectfile4="mRMR_select_l.txt"
# print read_select("MaxRel_select.txt")
select(inputfile1,outputfile1,selectfile1)
select(inputfile1,outputfile2,selectfile2)
select(inputfile2,outputfile3,selectfile3)
select(inputfile2,outputfile4,selectfile4)

