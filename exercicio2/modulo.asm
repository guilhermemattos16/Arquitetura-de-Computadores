; Escreva um trecho de código em linguagem de montagem para determinar se a instrução "DIV RCX" irá causar um erro se for executada.
		FORMAT 		ELF64
		SECTION		'.text'
		PUBLIC		funcao_teste

funcao_teste:
		MOV	RAX,	RDI	; Coloca o valor passado no acumulador
		XOR	RDX,	RDX	; Zera o registrador de resto de divisão
		MOV	RCX,	3	; Move o numero 3 para o registrador 
		DIV	RCX		; Realiza a divisão de RAX com RBX
		RET			; Retorna o resultado da divisao em RAX