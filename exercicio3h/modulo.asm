format	elf64
		section		'.text'
		public		funcao_strcmp

funcao_strcmp:
compara:
		MOV	RBX,		[RSI]
		CMP	[RDI],		RBX	
		JNE	retorna
		CMP	BYTE[RDI],	0
		JE	retorna
		CMP	BYTE[RSI],	0
		JE	retorna
		inc	RDI
		inc	RSI
		jmp	compara

retorna:	
		MOV     RAX, 		[RDI];
		SUB     RAX, 		[RSI];
		RET