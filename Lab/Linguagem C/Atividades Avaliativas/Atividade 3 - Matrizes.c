#include <stdio.h>
#include <windows.h>

int main(){
    SetConsoleOutputCP(65001);

    int i, j, n_nulos;
    int matriz[5][5], mcond[25][3];

    n_nulos = 0;
    printf("Insira os elementos da matriz: \n");
    for(i = 0; i < 5; i++)
    {
        for(j = 0; j < 5; j++)
        {
            printf("Posição [%d][%d]: ", i, j);
            scanf(" %d", &matriz[i][j]);
            if(matriz[i][j] != 0)
            {
                mcond[n_nulos][0] = matriz[i][j];
                mcond[n_nulos][1] = i;
                mcond[n_nulos][2] = j;
                n_nulos = n_nulos + 1;
            }
        }
    }
    printf("\nRelação de elementos não nulos: \n");
    printf("Valor\tLinha\tColuna \n");
    for(i = 0; i < n_nulos; i++)
    {
        for(j = 0; j < 3; j++)
        {
            printf("%d\t", mcond[i][j]);
        }
        printf("\n");
    }
}