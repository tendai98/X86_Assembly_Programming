; Simple 8 Bit Rotation Cipher (SBRC8) Algorithm for X86_64,AMD64 Hardware
; This is toy rotation cipher algorithm made using Intel Assembly

section .data

	MESSAGE: db "Yo, Whatsup NSA,How is CIA and JSOC?",0
	MESSAGE_LENGTH equ $ - MESSAGE

	ENCRYPTION_KEY_BLOCK1 db 1,2,3,4,1,2,3,4,1,2,3,4
	ENCRYPTION_KEY_BLOCK2 db 1,2,3,4,1,2,3,4,1,2,3,4
	ENCRYPTION_KEY_BLOCK3 db 1,2,3,4,1,2,3,4,1,2,3,4

	; Encryption keys dont look like this but this just a demo	
	; This is simple cipher to show how bit rotation works
	; I am sure NSA can break this in a nano second :(
	; Key block and message block has the same length
	; Key block must be initialized with random values
	; This cipher uses dynamic key length 
	; (Key block size == message block size)

section .bss

	CIPHER_TEXT resb MESSAGE_LENGTH ;Show ciphering
	PLAIN_TEXT resb MESSAGE_LENGTH ;Proof that it's working
	PIVOT_POINT_ADDRESS resb 8

section .text
global _start

_start:

crypt:
	mov esi,MESSAGE
	mov ebx,ENCRYPTION_KEY_BLOCK1
	mov edi,CIPHER_TEXT
	xor eax,eax
	xor edx,edx

crypt.encrypt_message:

	xor edx,edx
	mov cl,[ebx]	; Load key value
	mov dl,[esi]	; Load message character value
	ror BYTE dl,cl
	mov [edi],dl
	mov QWORD [PIVOT_POINT_ADDRESS],crypt.encrypt_message
	cmp eax,MESSAGE_LENGTH-1
	jne run_counters

decrypt:
	mov ebx,ENCRYPTION_KEY_BLOCK1
	mov esi,CIPHER_TEXT
	mov edi,PLAIN_TEXT
	xor eax,eax
	xor edx,edx

decrypt.decrypt_message:
	xor edx,edx
	mov cl,[ebx]
	mov dl,[esi]
	rol BYTE dl,cl
	mov [edi],dl
	mov QWORD [PIVOT_POINT_ADDRESS],decrypt.decrypt_message
	cmp eax,MESSAGE_LENGTH-1
	jne run_counters
	jmp end_program	
	
run_counters:
	add esi,1
	add edi,1
	add eax,1
	add ebx,1
	jmp [PIVOT_POINT_ADDRESS]

end_program:
	jmp 0x00007ffb0ed6d620 ; Location of ExitProcess Systemcall
	