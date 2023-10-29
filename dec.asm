section .data
	variable dw 64


section .text
global _start

_start:
	.decrement_sub:
		cmp DWORD [variable], 0
		jz .exit
		dec DWORD [variable]
		jmp .decrement_sub


	.exit:
		mov rax, 60
		mov rdi, [variable]
		syscall
