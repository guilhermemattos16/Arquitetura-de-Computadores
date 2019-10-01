#include <stdio.h>
#include <math.h>

// extern double mediaPonderada (double vetor[], double pesos[]);

double mediaPonderada(double vetor[], double pesos[]) {
	double resultado = 1;
	double soma = 0;

	for (int i = 0; i < 5; i++)
	{
		resultado = resultado * vetor[i];
		soma = soma + pesos[i];
	}
	
	resultado = resultado / soma;

	return resultado;
}

int main (void)
{
	double vetor [5] = {1.5, 1.4, 2.0, 2.5, 4.0};
	double pesos [5] = {1.5, 1.4, 2.0, 2.5, 4.0};
	printf ("Media Ponderada: %f\n", mediaPonderada (vetor, pesos));

	return 0;
}