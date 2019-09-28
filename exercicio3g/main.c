#include <stdio.h>
#include <string.h>

extern char *funcao_strcat(char *destino, const char *origem);

int main(){
        char destino[50];
        char origem[50];
        
        strcpy(destino, "Frase de Destino");
        strcpy(origem, "Frase de origem");

        // Verifica o tamanho da string
        funcao_strcat(destino, origem);

        puts(destino);
        
        return 0;
}