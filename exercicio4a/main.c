#include<stdio.h>

extern int funcao_bissexto(int ano);

int main ()
{
    int ano;
    int resultado;

    printf("Digite o ano desejado: ");
    scanf("%d",&ano);
    resultado = funcao_bissexto(ano);
    if (resultado == 0)
    {
        printf("O ano %d não é bissexto!\n", ano);
    }
    else
    {
        printf("O ano %d é bissexto!!\n", ano);
    }
    
    return 0;
}