# -*- coding: utf-8 -*- 
'''
Input: mRMR output files. Format:
0	1868	6.80015877857608753e-02		6.90923309313818179e-01
1	7089	4.91025015042314619e-02		7.64754419567419741e-01
2	7113	4.91025015042312191e-02		7.64754419567419741e-01
3	7119	4.54301314707035234e-02		7.29871209983116498e-01
4	3454	4.48397619235555295e-02		6.90923309313818179e-01
5	4141	4.09592658424485292e-02		6.90923309313818179e-01
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

OUTPUT: A file, format:
File name: feature seletor
	1868,7089,7113, ...

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

def write_txt(contents,outputfile,number):
	import csv
	selector="0,"
	mrmr="0,"
	for i in range(0,number):
		selector += contents[i][1].strip()+ ','
	selector=selector[0:len(selector)-1]

	with open(outputfile,'w') as f:
		f.write(selector)
	f.close()




'''
Main
'''
feature_number = 200
inputfile="leu.out"
outputfile="selector.txt"
contents=read_txt(inputfile)
write_txt(contents,outputfile,feature_number)




