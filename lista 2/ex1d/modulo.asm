; Calcular a média ponderada de um vetor de doubles;
; numero * pi / 180
; divss = xmm1/xmm2
		FORMAT	ELF64
		SECTION	'.text'

		PUBLIC	mediaPonderada

mediaPonderada:
		SUB		RSP,		8		; Alocação de Float		;
		MOVSD		QWORD [RSP],	XMM0
		FLD		QWORD [RSP]
loop1:
		CMP		RSP,		0
		JE		retornar
		FSTP		QWORD [RSP]
		MULSD		XMM0, 		QWORD[RSP]	; Transfere resultado para XMM0
		ADD		RSP, 		8		;
		JMP		loop1

retornar:
		RET