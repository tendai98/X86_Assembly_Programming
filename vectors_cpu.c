#include "output.h"
// Vector Addition using For Loops (CPU-RISC) (MIMD)

unsigned char v1[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x11,0x22,0x33,0x44};
unsigned char v2[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x11,0x22,0x33,0x44};

int main(){
	for (i = 0;i < VECTOR_SIZE; i++){
		v2[i]+=v1[i];
	}	
	outputVector(v2); //we can do without this
}