#include <stdio.h>
#include <string.h>

extern char *funcao_strstr(const char *haystack, const char *needle);


int main(){
    char str[30] = "Joao ";
    char str2[30] = "Maria ";
    
    funcao_strstr(str, "Joaoaaaaaaaa") ? printf("É substring!\n") : printf("Null!\n");
    funcao_strstr("", "aba") ? printf("É substring!\n") : printf("Null!\n");
    strstr(str, "abaasdasdasdas") ? printf("É substring!\n") : printf("Null!\n");
    

    return 0;
}