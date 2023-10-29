section .data
	a dd 90
	b dd 9
	c dd 0
	d dd 0


section .text
global _start

_start:

	.div_sub:
		xor edx, edx
		mov eax, [a]
		mov ebx, [b]
		div ebx
		mov [c], eax

	.idiv_sub:
		xor edx, edx
		mov eax, [a]
		mov ebx, [b]
		idiv ebx
		mov [d], eax

	.exit:
		mov rax, 60
		mov rdi, [c]
		syscall

