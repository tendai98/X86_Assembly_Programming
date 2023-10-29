section .data
	number: dd 72

section .bss
	N resb 4

section .text
global _start

_start:
	mov eax,[number]
	mov ecx,2
loop:
	rol eax,cl
	mov [N],eax
	jmp loop