;               Recebe um valor e retorna o mesmo sem sinal
	        	FORMAT	ELF64
                
                PUBLIC funcao_abs

        		SECTION	'.text'
funcao_abs: 
                MOV         EAX, EDI    ; 
                CMP         EAX, 0      ; Compara o registrador
                JG          positivo    ; Caso seja um numero positivo executa um salto curto para positivo
                NEG         EAX         ; Realiza a negacao do numero

positivo:                               ; Função para caso o numero seja positivo 
                RET