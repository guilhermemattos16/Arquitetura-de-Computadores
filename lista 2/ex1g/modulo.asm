; Calcular o valor de uma potência cuja base é um float e o expoente é um inteiro sem sinal, utilizando multiplicações sucessivas;

		FORMAT	ELF64
		SECTION	'.text'

		PUBLIC	funcao_pow

funcao_pow:	
		SUB	RSP,4				;
		MOVSS	DWORD [RSP],XMM0		; Transfere argumento para a FPU
		FLD	DWORD [RSP]			;

		XOR	R9,	R9
loop1:
		MULSS		XMM0, 		DWORD[RSP]	; Transfere resultado para XMM0

		FSTP	DWORD [RSP]			;
		MOVSS	XMM0, DWORD [RSP]		; Transfere resultado para XMM0
		ADD	RSP, 4				;
		RET

