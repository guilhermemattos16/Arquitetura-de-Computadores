FORMAT  ELF64
                section         '.text'
                public          funcao_bissexto                

funcao_bissexto:
        	mov		eax, 		edi
		xor		edx, 		edx
		mov		ebx, 		400
		div		ebx			; Divide o numero passado por 400
		cmp		edx, 		0	; Compara o resto da divisão com zero
		je		retorno			; Se o numero dividir exatamente por 400 é bissexto
		mov		eax, 		edi	; Pega novamente o valor passado como argumento
		xor		edx, 		edx
		mov		ebx, 		100	
		div		ebx			; Divide o numero passado por 100
		cmp		edx, 		0	; Compara o resto da divisão com zero
		je		not_bissexto		; Se o numero dividir exatamente por 100 não é bissexto
		mov		eax, 		edi
		xor		edx, 		edx
		mov		ebx, 		4
		div		ebx			; Divide o numero passado por 4
		cmp		edx, 		0	; Compara o resto da divisão com zero
		ja		not_bissexto		; Se o numero dividir exatamente por 4 não é bissexto
		ret					; Retorna o numero

not_bissexto:
		xor		rax, 		rax	; Zera o acumulador

retorno:
		ret