FORMAT  ELF64
                section         '.text'
                public          funcao_fibonacci                

funcao_fibonacci:
                cmp	edi, 	0
                je 	retornar
                mov	eax, 	1
                mov	esi, 	0
                mov	ecx, 	1
		
loop1:	
		cmp	ecx, 	edi
		je	retornar	; Retorna caso o argumento passado seja zero ou chegue ao final do loop
		xadd	eax, 	esi
		inc	ecx
		jmp	loop1
		
retornar:
                ret