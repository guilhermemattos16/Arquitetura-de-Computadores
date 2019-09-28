#include<stdio.h>

extern int funcao_primo(int n);

int main ()
{
    int resultado;
    int num;
    printf("Digite o termo desejado: ");
    scanf("%d",&num);
    resultado = funcao_primo(num);
    if (resultado == 1)
    {
        printf("O numero %d é primo!\n", num);
    }
    else
    {
        printf("O numero %d não é primo!!\n", num);
    }
    return 0;
}