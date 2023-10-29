section .data
	a dd 90
	b dd 60
	c dd 0
	d dd 0


section .text
global _start

_start:
	_mul_sub:
		mov eax, [a]
		mov ebx, [b]
		mul ebx
		mov [c+0], edx
		mov [c+4], eax


	_imul_sub:
		mov eax, [a]
		mov ebx, [b]
		imul ebx
		mov [d+0], edx
		mov [d+4], eax

	.exit:
		mov rax, 60
		xor rdi, rdi
		syscall

