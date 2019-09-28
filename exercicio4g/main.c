#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void funcao_insercao(int *vetor, int tamanho);

// Função para auxiliar a impressão do vetor 
void printVetor(int A[], int n) 
{ 
    int i; 
    printf("Vetor: { ");
    for (i = 0; i < n; i++) {
        printf("%d ", A[i]); 
    }

    printf(" }\n"); 
} 
  
int main() 
{ 
    int A[] = {15, 12, 18, 6, 9 }; 
    int tamanho = sizeof(A) / sizeof(A[0]);

    printf("Tamanho do vetor: %d\n", tamanho);
    
    funcao_insercao(A, tamanho); 
    printVetor(A, tamanho); 
  
    return 0; 
} 