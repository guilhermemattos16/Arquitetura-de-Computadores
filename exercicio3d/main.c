#include <stdio.h>
#include <string.h>

extern int funcao_memset(void *str, char c, size_t n);

int main(){
    char str[20];

    strcpy (str, "Guilherme Mattos");
    
    //memset insere um caracter n vezes no inicio de uma string
    funcao_memset(str, '-', 7);
    printf("Frase: %s \n\n",str);
    
    return 0;
}