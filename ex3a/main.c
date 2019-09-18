#include <stdio.h>

extern int funcao_abs(int num);

int main(){
    int x;
    
    printf("Insira um numero: ");
    scanf("%d", &x);
    
    int y = funcao_abs(x);   
    printf("%d\n", y);

    return 0;
}