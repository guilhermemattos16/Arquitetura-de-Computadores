#include <stdio.h>
#include <math.h>

extern float funcao_pow (float base, int expoente);

int main (void)
{
	float base = 0;
	int expoente = 0;

	printf("Insira a base desejada: ");
	scanf("%f", &base);

	printf("Insira o expoente desejado: ");
	scanf("%d", &expoente);
	
	printf ("Resultado: %f\n", funcao_pow (base, expoente));

	return 0;
}

