#include <stdio.h>
#include <string.h>

extern int funcao_strcmp(char *str1, char *str2);

int main ()
{
        char str1[10] = "abc";
        char str2[10] = "ab";
        int retorno;

        retorno = funcao_strcmp(str1, str2);
        
        printf("\nRetorno: %d \n", retorno);
	return 0;
}