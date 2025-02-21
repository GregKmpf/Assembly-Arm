; Escrever um programa assembly que 
; lê dois inteiros e
; exibe o maior dos dois valores.

%include	'../util.asm'

section		.text
global		_start

_start:
	; exibe mensagem para leitura
	lea		rdi, [msg1]
	call	printstr
	
	; lê o primeiro valor e guarda no r12
	call	readint
	mov		r12, rax
	; lê o segundo valor e guarda no r13
	call	readint
	mov		r13, rax
	; printa mensagem de saida
	lea		rdi, [msg2]
	call	printstr
	; n1>n2
	cmp		r12, r13
	jg		n1maior
	mov		rdi, r13 	; vai exibir o n2
	jmp		fim
n1maior:
	mov		rdi, r12	; vai exibir o n1
fim:
	call	printint
	call	endl
	call	exit0

section		.data
msg1:	db 'Informe dois valores: ', 10 , 0
msg2: 	db 'Maior: ', 0
            
