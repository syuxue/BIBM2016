#include <stdio.h>
#include <stdlib.h>
#define 	MAX_GENES 2000

int main(){
	FILE * fp;
	FILE * fpw;
	float 	f_status,f_tmp;
	float 	genes[MAX_GENES+1];  //begin at 1
	int 	i=1;
	int		j=1;
	int 	check=0;
	float 	min=10.0;
	float	max=-10.0;

	fp=fopen("colon.raw","r");
	fpw=fopen("tocsv.csv","w");
	if(fp==NULL||fpw==NULL)
		exit(2);
	//printf header
	fprintf(fpw, "%s,","status" );
	for (i = 1; i < (MAX_GENES); i++)
	{
		fprintf(fpw, "gene%d,", i);
	}
	fprintf(fpw, "gene2000\n");

	for(;j<63;j++){
		fscanf(fp,"%f",&f_status);
		for(i=1;i<(MAX_GENES+1);i++){
			fscanf(fp,"%d:%f",&check,&f_tmp);
			if(check==i){
				genes[i]=f_tmp;
				min=genes[i]<min?genes[i]:min;
				max=genes[i]>max?genes[i]:max;
			}
		}
		fprintf(fpw, "%f,",f_status );
		for (i = 1; i < (MAX_GENES); i++)
		{
			fprintf(fpw, "%f,", genes[i]);
		}
		fprintf(fpw, "%f\n",genes[MAX_GENES]);



	}

	fclose(fp);
	fclose(fpw);

	printf("min=%f\n",min);
	printf("max=%f\n",max);
	//printf("\n");
	// for(i=1;i<(MAX_GENES+1);i++){
	// 	printf("%d:%f ",i,genes[i]);
	// 	if(i%20==0)
	// 		printf("\n");
	// }
}
