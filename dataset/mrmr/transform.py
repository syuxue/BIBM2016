# -*- coding: utf-8 -*- 
'''
Input: mRMR output files. Format:
1 	 3320 	 Attr3320 	 0.459
2 	 6281 	 Attr6281 	 0.425
3 	 804 	 Attr804 	 0.391
4 	 6184 	 Attr6184 	 0.376
5 	 1962 	 Attr1962 	 0.344
6 	 1829 	 Attr1829 	 0.344
7 	 2121 	 Attr2121 	 0.334
8 	 1674 	 Attr1674 	 0.334
9 	 6677 	 Attr6677 	 0.325
10 	 2363 	 Attr2363 	 0.324
11 	 4847 	 Attr4847 	 0.318
12 	 2439 	 Attr2439 	 0.316
13 	 1087 	 Attr1087 	 0.306
...

OUTPUT: Two files. Format:
File1: MaxRel Feature selector
	3320,6281,804, ...
File2: mRMR Feature selector
	3320,2363,1674, ...

This program is use for preprocess file select.txt for excel_file.py.
用于预处理生成select.txt给excel_file.py后续使用
We use the output result grep filtered as the input file, we import the 
elements we need by order and output them separated by comma.
mRMR程序输出后通过grep生成输入文件，提取需要的元素个数，输出按照排名的元素index

'''

def read_txt(filename):
	contents = []
	with open(filename) as f:
		for line in f:
			content = line.split('\t')
			contents.extend([content])
	f.close()
	return contents

def write_txt(contents,filename_max,filename_mrmr,number):
	import csv
	maxRel="0,"
	mrmr="0,"
	for i in range(0,number):
		maxRel += contents[i][1].strip()+ ','
	maxRel=maxRel[0:len(maxRel)-1]
	for i in range(number,number<<1):
		mrmr += contents[i][1].strip()+ ','
	mrmr=mrmr[0:len(mrmr)-1]

	with open(filename_max,'w') as f:
		f.write(maxRel)
	f.close()
	with open(filename_mrmr,'w') as f:
		f.write(mrmr)
	f.close()




'''
Main
'''
feature_number = 200
# inputfile="example_trans.txt"
inputfile_l="mRMR_algorithm_files/leu_con_MIQ" + str(feature_number) +".txt"
inputfile_c="mRMR_algorithm_files/colon_con_MIQ" + str(feature_number) +".txt"
MaxRel_output_l = "MaxRel_select_l.txt"
mRMR_output_l = "mRMR_select_l.txt"
MaxRel_output_c = "MaxRel_select_c.txt"
mRMR_output_c = "mRMR_select_c.txt"
contents=read_txt(inputfile_l)
write_txt(contents,MaxRel_output_l,mRMR_output_l,feature_number)
contents=read_txt(inputfile_c)
write_txt(contents,MaxRel_output_c,mRMR_output_c,feature_number)




