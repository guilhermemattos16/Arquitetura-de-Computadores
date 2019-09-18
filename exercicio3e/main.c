#include <stdio.h>
#include <string.h>

extern int funcao_strlen(char *str);

int main(){
        char str[50];
        
        printf("Insira a frase desejada: ");
        gets(str);
        
        fflush(stdin);
        
        // Verifica o tamanho da string
        puts(str);
        printf("\nTem tamanho: %d \n\n", funcao_strlen(str));

        return 0;
}