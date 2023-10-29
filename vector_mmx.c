#include "output.h"
// Vector Addition using SIMD via (Intel MMX)

unsigned char v1[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x75};
unsigned char v2[VECTOR_SIZE]={0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x75};

void MMX_Vector_Add(unsigned char * vector1,unsigned char * vector2,union CODEC * codecPtr){

	asm("movq (%rcx),%mm0");
	asm("movq (%rdx),%mm1");
	asm("paddb %mm0,%mm1");
	asm("movq %mm1,(%r8)");
}

int main(){

	MMX_Vector_Add(v1,v2,&codec);
	outputDecodedVector();
	//we can do without this ^
}