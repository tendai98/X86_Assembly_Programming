float X87_FPU_Sin(float x){

	asm("fld (%0)"::"a"(&x));
	asm("fsin");
	asm("fst (%rax)");
	return x;
}