#include "output.h"
// Vector Addition using MIMD (CPU-RISC)

unsigned char v1[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x11,0x22,0x33,0x44};
unsigned char v2[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x11,0x22,0x33,0x44};

int main(){

	v2[0]+=v1[0];
	v2[1]+=v1[1];
	v2[2]+=v1[2];
	v2[3]+=v1[3];	
	v2[4]+=v1[4];
	v2[5]+=v1[5];
	v2[6]+=v1[6];
	v2[7]+=v1[7];
	outputVector(v2); //we can do without this
}