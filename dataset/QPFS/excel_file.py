# -*- coding: utf-8 -*- 

'''
This file is to use the selector generate from transform_qfps.py
to select certain attributes from the raw dataset.

'''

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
# inputfile="colon_cf_tf.csv"
inputfile="leu_cf_tf.csv"
# outputfile="colon_QPFS_" + str(feature_number) +".csv"
outputfile="leu_QPFS_" + str(feature_number) +".csv"
selectorfile="selector.txt"
select(inputfile,outputfile,selectorfile)

