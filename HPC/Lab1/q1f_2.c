#include<stdio.h>
#include<math.h>
#include<omp.h>
#include<stdlib.h>
#include<time.h>
int main()
{
	int i=2048,j;
	double **a;
	double **b;
	// allocating memory and random numbers to the matrix
	a = (double**)malloc(i * sizeof(double*));
	b = (double**)malloc(i * sizeof(double*));
	for(j = 0 ; j < i ; j++)
	{
		a[j] = (double*)malloc(i * sizeof(double));
		b[j] = (double*)malloc(i * sizeof(double));
	}
	int block_size;
	int p[11]={1,2,3,4,5,6,7,8,9,10,11};
	int q;
	for(q = 0 ; q <11  ; q+=1)
	{	
		block_size=1;
		for(j=0;j<p[q];j++)
			block_size *= 2;
		int i1,j,k,l;                            
		
		double start_time = omp_get_wtime();
		int run;		
		for(run=0;run<=100;run++)	
		for (i1 = 0; i1 < i; i1 += block_size)  
		{
			for (j = 0; j < i; j += block_size) 
			{
				// no we have acccessed the blocks and its time to transpose the blocks
				
				for (k = 0; k < block_size; k++) 
				{
					for (l = 0; l < block_size; l++) 
					{
						
						b[i1+k][j+l]=a[j+l][i1+k];
	    				}
				}
			}
		}		
		double end_time = omp_get_wtime();
		double total_time = (end_time - start_time);
		double time = total_time/run;
		printf("[ %d , %lf],\n", block_size, time);
	}
	return 0;
} 
