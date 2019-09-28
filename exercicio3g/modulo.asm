; Recebe um caracter e retorna o mesmo em maiuscula
		FORMAT	ELF64
		
		PUBLIC 	funcao_strcat

		SECTION	'.text'

funcao_strcat: 
                mov         rax, rdi ;Move o ponteiro para a primeira string para o registrador de retorno
                push        rax ; Colocar ponteiro na pilha antes de chamar a funcao de len
                push        rsi ; Coloca ponteiro na pilha antes de chamar a funcao
                xor         eax, eax
contador_string:
                cmp         byte [rdi], 0
                je          continuar
                inc         eax  
                inc         rdi
                jmp         contador_string
continuar:       
                pop         rsi ; Pega a segunda string da pilha
                pop         rdi ; Pega a primeira string da pilha
                push        rdi ; Retorna a primeira string pra pilha (O inicio da primeira string)
                add         rdi, rax ;Soma o tamanho da primeira string no ponteiro para chegar ao final da string
copiar_string:
                cmp         byte [rsi], 0
                je          retornar
                mov         r9l, [rsi]
                mov         byte [rdi], r9l
                inc         rdi  
                inc         rsi
                jmp         copiar_string
retornar:       
                mov         byte [rdi], 0
                pop         rax
                ret


                