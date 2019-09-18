#include <stdio.h>

extern int funcao_toupper(char letra);

int main(){
    char letra;
    
    printf("Digite uma letra do alfabeto: ");
    scanf("%c",&letra);
  
    //toupper transforma em maiuscula
    letra = funcao_toupper(letra);
    printf("Maiuscula: %c \n\n",letra);
    
    return 0;
}