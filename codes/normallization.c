#include <stdio.h>
#include <stdlib.h>
#define 	MAX_GENES 		2000
#define 	INPUT_ROWS		62
#define 	FILE_PATH 		"colon.raw"
#define 	OUTFILE_PATH	"normalized.csv"

int main(){
	FILE * fp;
	FILE * fpw;
	float 	f_status,f_tmp;
	float 	genes[INPUT_ROWS+4][MAX_GENES+1];  	//begin at 1 
			//INPUT_ROWS+1	sum of the colomn
			//INPUT_ROWS+2	min of the colomn
			//INPUT_ROWS+3	max of the colomn

	float	status_col[INPUT_ROWS+1];			//save status colomn
	int 	i=1;
	int		j=1;
	int 	check=0;
	float 	min=10.0;
	float	max=-10.0;
	float 	sum=0.0;
	float 	mean=0.0;


	for(i=1;i<MAX_GENES+1;i++){
		genes[INPUT_ROWS+1][i]=0.0;
		genes[INPUT_ROWS+2][i]=10.0;
		genes[INPUT_ROWS+3][i]=-10.0;
	}

	fp=fopen(FILE_PATH,"r");
	fpw=fopen(OUTFILE_PATH,"w");

	if(fp==NULL||fpw==NULL)
		exit(2);
	//printf header
	fprintf(fpw, "%s,","status" );
	for (i = 1; i < (MAX_GENES); i++)
	{
		fprintf(fpw, "gene%d,", i);
	}
	fprintf(fpw, "gene2000\n");

//read all data
	for(;j<INPUT_ROWS+1;j++){
		fscanf(fp,"%f",&f_status);
		status_col[j]=f_status;
		for(i=1;i<(MAX_GENES+1);i++){
			fscanf(fp,"%d:%f",&check,&f_tmp);
			if(check==i){
				genes[j][i]=f_tmp;
				genes[INPUT_ROWS+1][i]+=f_tmp;
				if(genes[INPUT_ROWS+2][i]>f_tmp)
					genes[INPUT_ROWS+2][i]=f_tmp;
				if(genes[INPUT_ROWS+3][i]<f_tmp)
					genes[INPUT_ROWS+3][i]=f_tmp;
			}
		}
	}
//normalization
//sum to mean
for(i=1;i<MAX_GENES+1;i++){
	genes[INPUT_ROWS+1][i]/=INPUT_ROWS;
}
//value=(value-mean)/(max-min)
for(i=1;i<INPUT_ROWS+1;i++){
	fprintf(fpw, "%f,",status_col[i]);
	for(j=1;j<MAX_GENES;j++){
		f_tmp=(genes[i][j]-genes[INPUT_ROWS+1][j])/(genes[INPUT_ROWS+3][j]-genes[INPUT_ROWS+2][j]);
		fprintf(fpw, "%f,",f_tmp);
	}
	f_tmp=(genes[i][j]-genes[INPUT_ROWS+1][j])/(genes[INPUT_ROWS+3][j]-genes[INPUT_ROWS+2][j]);
	fprintf(fpw, "%f\n",f_tmp);

}
for(i=1;i<4;i++){
	fprintf(fpw, "%s,","Mean");
	for(j=1;j<MAX_GENES;j++){
		fprintf(fpw, "%f,",genes[INPUT_ROWS+i][j]);
	}
	fprintf(fpw, "%f\n",genes[INPUT_ROWS+i][j]);
}

	fclose(fp);
	fclose(fpw);

}
