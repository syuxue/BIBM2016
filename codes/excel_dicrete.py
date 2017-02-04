'''
This program is to dicrete the input csv file.
p is the mean value and q is the standard deviation

1: if the value in (p+q/2, + infinite)
0: if the value in [p-q/2,p+q/2]
-1: if the value in (-infinite, p-q/2)

'''
def readfile(filename,p,q):
	import csv

	with open(filename,'rb') as f:
		reader = csv.reader(f)
		rows = [row for row in reader]
		n_column = len(rows[0])
		n_row =len(rows)
		print rows[1][15]
		print p+q/2
		for i in range(1,n_column):
			for j in range(1,n_row):
				if float(rows[j][i])> (p+q/2):
					rows[j][i]=1.0
				elif float(rows[j][i]) < (p-q/2):
					rows[j][i]=-1.0
				else:
					rows[j][i]=0.0
		print rows[1][15]
		print type(rows[1][15])
	f.close()
	return rows


def write_csv(filename, list_towrite):
	import csv
	with open(filename,'w') as f:
		f_csv = csv.writer(f)
		f_csv.writerows(list_towrite)
	f.close()

inputfile = "colon_class_front.csv"
# inputfile = "example.csv"
outputfile = "c_dicreted_3t.csv"
rows=readfile(inputfile,0.0,1.0)
write_csv(outputfile, rows)