#include<stdio.h>

extern int funcao_fibonacci(int n);

int main ()
{
    int n;

    printf("Digite qual posição do termo de fibonacci você quer saber: ");
    scanf("%d",&n);
    n = funcao_fibonacci(n);
    printf("\n Valor: %d \n",n);
    return 0;
}