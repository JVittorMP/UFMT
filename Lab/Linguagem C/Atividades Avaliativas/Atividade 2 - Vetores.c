#include <stdio.h>
#include <windows.h>

int main(){
    SetConsoleOutputCP(65001);

    int vetor[10], c, i, m;
    // c = Contador | i = Índice do 1º Elemento | m = Tamanho

    printf("Insira os dados do vetor: \n");
    for(c = 0; c < 10; c++)
    {
        printf("posição %d: ", c);
        scanf(" %d", &vetor[c]);
    }
    printf("\n");
    m = 1;
    i = 0;
    for(c = 0; c < 9; c++)
    {
        if(vetor[c] < vetor[c+1])
        {
            m = m + 1;
            if(c == 8)
                printf("Início: %d \t Tamanho: %d \n", i, m);
        }
        if((vetor[c] > vetor[c+1]) || (vetor[c] == vetor[c+1]))
        {
            printf("Início: %d \t Tamanho: %d \n", i, m);
            i = c + 1;
            m = 1;
            if(c == 8)
                printf("Início: %d \t Tamanho: %d \n", i, m);
        }
    }
}