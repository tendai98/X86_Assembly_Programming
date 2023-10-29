section .data
	a dd 60
	b dd 90
	c dd 0
	d dd 0

section .text
global _start

_start:
	.add_sub:
		mov eax, [a]
		mov ebx, [b]
		add eax, ebx
		mov [c], eax

	.sub_sub:
		mov eax, [a]
		sub eax, ebx
		mov [d], eax


	.exit:
		mov rax, 60
		mov rdi, [c]
		syscall
