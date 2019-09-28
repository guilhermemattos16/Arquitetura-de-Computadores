; Recebe um caracter e retorna o mesmo em maiuscula
		FORMAT	ELF64
		
		PUBLIC 	funcao_strcpy

		SECTION	'.text'

funcao_strcpy: 
		MOV	RAX,		RDI		
		
contador:                
		CMP	BYTE[RSI],	0	; Verifica se a string é vazia
		JE	final			; Saltar caso seja igual a zero
		MOV	R9L,		[RSI]
		MOV	BYTE[RDI],	R9L
		INC	RSI			; incrementa o acumulador
		INC	RDI			; Incrementa o RDI
		JMP	contador		; Executa o Loop

final: 						; Caso chegue ao final da string
		MOV	BYTE[RDI],	0
		RET