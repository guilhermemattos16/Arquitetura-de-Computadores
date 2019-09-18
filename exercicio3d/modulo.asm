;               Recebe um caracter e retorna o mesmo em maiuscula
	        	FORMAT	ELF64
                
                PUBLIC funcao_memset

        		SECTION	'.text'
funcao_memset: 
                MOV         RAX,        RDI ; Recebe a String
                MOV         RCX,        RDX ; Recebe a quantidade de repetições
                JRCXZ       cont_errado     ; 
                
inicio_loop:                
                MOV         [RDI],      SIL
                INC         RDI             ; Incemento o RDI
                LOOP        inicio_loop     ; Executa o Loop

cont_errado:                                ; Caso chegue ao final da string ou seja passada
                RET