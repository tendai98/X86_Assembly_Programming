section .data
	variable db 0


section	.text
global _start

_start:
	xor eax, eax
	xor ecx, ecx

	.increment_sub:
		cmp ecx, 10
		je .exit
		inc DWORD [variable]
		inc eax
		inc ecx
		jmp .increment_sub

	.exit:
		mov rax, 60
		mov rdi, [variable]
		syscall
