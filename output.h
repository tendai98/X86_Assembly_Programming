// Just an output function we can do without

#include <stdio.h>
#define VECTOR_SIZE 8
unsigned char i = 0;


union CODEC{
	unsigned long long input;
	unsigned char outputVector[VECTOR_SIZE];
} codec;

void outputVector(unsigned char * vector){
	printf("Output: [ ");
	for (i = 0;i < VECTOR_SIZE; i++){
		printf("0x%x ",vector[i]);
	}
	printf("]");
}

void outputDecodedVector(){
	printf("Output: [ ");
	for (i = 0;i < VECTOR_SIZE; i++){
		printf("0x%x ",codec.outputVector[i]);
	}
	printf("]");
}