section .data
	array db 1,2,3,4,5,6,7,8,9,0


section .text
	global _start


_start:
	times 20 nop
	xor rax, rax
	xor rcx, rcx
