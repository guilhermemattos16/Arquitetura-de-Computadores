;               Recebe um caracter e retorna o mesmo em maiuscula
	        	FORMAT	ELF64
                
                PUBLIC funcao_toupper

        		SECTION	'.text'
funcao_toupper: 
                MOV         AL,     DIL         ;
                CMP         AL,     'a'         ;
                JB          maiuscula           ;
                CMP         AL,     'z'         ;
                JA          maiuscula           ;
                SUB         AL,     'a'-'A'     ;

maiuscula:
				RET
