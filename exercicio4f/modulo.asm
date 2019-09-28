; ----------------------------------------------------------------------------------------
; Ordena um vetor atraves do metodo bolha
; em C: void funcao_bolha(int *vetor, int tamanho);
; ----------------------------------------------------------------------------------------

		format elf64

		section 	'.text'
		public 		funcao_bolha
funcao_bolha:
		DEC		ESI				; Decrementa o tamanho do vetor
		mov		ECX, 		-1
		mov		RBX, 		RDI
proximo_elemento:
		inc		ecx
		cmp		ecx, 		ESI
		je		return
		xor		eax, 		eax		; Zera o eax
		mov		rdi, 		RBX
sort:
		cmp		eax, 		esi		; Compara eax com esi
		je		proximo_elemento		; Caso seja igual, acabou o vetor
		mov		r9d, 		[rdi + 4]	; Move o proximo item do vetor para r9d
		cmp		[rdi], 		r9d		; Compara os dois itens do vetor
		jbe		no_exchange			; Caso o primeiro seja menor ou igual ao segundo, nao troca
		xchg		r9d, 		[rdi]		; Troca os dois itens de lugar
		mov		[rdi + 4], 	r9d  		; Move o item do registrador para a memoria no espaco correto
no_exchange:
		inc		eax
		add		rdi, 4
		jmp		sort
return:
		ret