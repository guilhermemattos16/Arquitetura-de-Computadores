		FORMAT	ELF64
		SECTION	'.text'

		PUBLIC	meuSeno

meuSeno:	SUB	RSP,8				;
		MOVSD	QWORD [RSP],XMM0		; Transfere argumento para a FPU
		FLD	QWORD [RSP]			;

		FSIN

		FSTP	QWORD [RSP]			;
		MOVSD	XMM0, QWORD [RSP]		; Transfere resultado para XMM0
		ADD	RSP, 8				;
		RET

