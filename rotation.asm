section .data
	number1: dd 1
	number2: dd 128

section .bss
	left_rotation_output1 resb 4
	left_rotation_output2 resb 4
	right_rotation_output1 resb 4
	right_rotation_output2 resb 4

section .text
global _start

_start:
	mov eax,[number1]
	mov ebx,[number2]
	mov cl,1
	rol eax,cl
	rol ebx,cl
	mov [left_rotation_output1],eax
	mov [left_rotation_output2],ebx
	ror eax,cl
	ror ebx,cl
	mov [right_rotation_output1],eax
	mov [right_rotation_output2],ebx	

loop:
	jmp loop