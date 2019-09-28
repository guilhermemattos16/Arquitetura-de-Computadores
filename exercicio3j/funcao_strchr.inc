
		public		funcao_strchr

funcao_strchr:

compara:
		cmp	byte[rdi], 	sil
		je	retorna
        	cmp     byte[rdi], 	0
        	je      retorna
		inc	rdi
		jmp	compara

retorna:	
        	mov     rax, 		rdi;
		ret