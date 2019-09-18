#include <stdio.h>
#include <string.h>

extern char *funcao_strcpy(char *dest, const char *orig);

int main(){
        char destino[50];
        char origem[50];
        
        printf("Insira uma frase: ");
        gets(destino);
        
        printf("Insira uma outra frase: ");
        gets(origem);

        fflush(stdin);
        
        // Verifica o tamanho da string
        funcao_strcpy(destino, origem);

        puts(destino);
        
        return 0;
}