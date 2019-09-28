#include <stdio.h>
#include <stdlib.h>

extern int funcao_teste(int numero);

int main() {
    int numero = 6;
    int resultado;

    resultado = funcao_teste(numero);

    printf("Resultado: %d\n", resultado);

    return 0;
}