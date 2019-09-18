; Recebe um caracter e retorna o mesmo em maiuscula
		FORMAT	ELF64
		
		PUBLIC 	funcao_strlen

		SECTION	'.text'
funcao_strlen: 
		XOR	EAX,		EAX	; Zera o acumulador

contador:                
		CMP	BYTE[RDI],	0	; Verifica se a string é vazia
		JE	final			; Saltar caso seja igual a zero
		INC	EAX			; incrementa o acumulador
		INC	RDI			; Incrementa o RDI
		JMP	contador		; Executa o Loop

final: 						; Caso chegue ao final da string
		RET