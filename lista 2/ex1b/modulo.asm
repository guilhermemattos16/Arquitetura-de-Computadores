;Converter um ângulo de graus para radianos (usando float);
; numero * pi / 180 
;divss = xmm1/xmm2
		FORMAT	ELF64
		SECTION	'.text'

		PUBLIC	grauToRadiano

grauToRadiano:	
		SUB		RSP,		4		; Alocação de Float		;
		FLDPI						; Coloca o valor de Pi no topo da pilha
		MOVSS		XMM1,		XMM0
		FSTP		DWORD [RSP]
		MOV		EBX,		180
		CVTSI2SS 	XMM1,		EBX
		DIVSS		XMM0,		XMM1
		MULSS		XMM0, 		DWORD[RSP]	; Transfere resultado para XMM0
		ADD		RSP, 		4		;
		RET