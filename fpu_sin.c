#include <stdio.h>

float output;

float X87_SIN(float input){
	asm("fld (%0)"::"a"(&input));
	asm("fsin");
	asm("fst (%rax)");
	return output;
}


int main(int argc,char * argv[]){
	float x = (float) atoi(argv[1]);		
	float y = X87_SIN(x);
	printf("[Input in Radians]\nSin(%f) = %f\n",x,y);
}
