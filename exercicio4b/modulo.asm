FORMAT  ELF64
                section         '.text'
                public          funcao_primo                

funcao_primo:
		MOV		EBX,    2
                CMP             EDI,    1
                JE              not_primo

divisores:
		CMP		EBX,    EDI
		JE		primo
		XOR		EDX,    EDX
		MOV		EAX,    EDI
		DIV		EBX
		CMP		EDX,    0
		JE		nao_primo
		INC		EBX
		JMP		divisores

nao_primo:
		XOR		EAX,    EAX
		RET

primo:
		MOV		EAX,    1
		RET