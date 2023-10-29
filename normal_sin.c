#include <stdio.h>
#include <math.h>

int main(int argc,char * argv[]){
	float x = (float) atoi(argv[1]);		
	float y = sin(x);
	printf("[Input in Radians]\nSin(%f) = %f\n",x,y);
}