#include <stdio.h>
#include "x87.h"

float x;
float y;

int main(int argc ,char * argv[]){

	x = (float) atoi(argv[1]);
	y = X87_FPU_Sin(x);
	printf("Sin(%f) = %f \n",x,y);

}