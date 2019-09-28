#include <stdio.h>

extern char * funcao_strchr (char* str, int c);

int main ()
{
        char str[20] = "Guilherme Mattos";
        char c = 'e';
        char* str2 = NULL;

        str2 = funcao_strchr(str,c);
        
        printf("\nRetorno: %s \n",str2);
	return 0;
}