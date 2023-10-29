section .data
	a dd 0

section .text
global _start

_start:
	mov ecx, 90

	.loop_sub:
		inc DWORD [a]
		loop .loop_sub

	exit:
		mov rax, 60
		mov rdi, [a]
		syscall
