#include <stdio.h>
#include <windows.h>
#include <stdlib.h>

void Ex1();
void Ex2();

typedef struct Tpessoas {
    char nome[50];
    int idade;
    float salario;
} Tpessoas;

int main(){
    // Exercícios - Arquivos - Aula 6

    int op;
    SetConsoleOutputCP(65001);
    printf("1 - Exercício 1 \n2 - Exercício 2\n\n");
    printf("Qual Exercício Deseja Acessar? ");
    scanf(" %d", &op);
    system("cls");
    switch(op){
        case(1):
            Ex1();
            break;
        case(2):
            Ex2();
            break;
    }
}

void Ex1(){
    // Exercício de Fixação 1 - Aula 6
    // Faça um programa que leia as informações de nome, idade e salário de 4 pessoas
    // e salve em um arquivo chamado "dados.txt".

    Tpessoas vetor[4];
    FILE *arq1;
    arq1 = fopen("dados.txt", "w");
    printf("Insira as informações: \n");
    if(arq1 != NULL)
    {
        for(int c = 0; c < 4; c++)
        {
            printf("nome: ");
            scanf(" %[^\n]s", vetor[c].nome);
            printf("idade: ");
            scanf(" %d", &vetor[c].idade);
            printf("salário: ");
            scanf(" %f", &vetor[c].salario);
            fprintf(arq1, "%s\n", vetor[c].nome);
            fprintf(arq1, "%d\n", vetor[c].idade);
            fprintf(arq1, "%.2f\n", vetor[c].salario);
            printf("\n");
        }
    }
    fclose(arq1);
}

void Ex2(){
    // Exercício de Fixação 2 - Aula 6
    // Faça um programa que leia seu arquivo "dados.txt" e coloque as informações em
    // um tipo de registro chamado TPessoas, que possui os mesmos campos. Declare um
    // vetor de registros desse tipo para as 4 pessoas e salve em um arquivo chamado
    // "backupDados.txt". Mostre o salário médio das pessoas depois de ler as
    // informações do arquivo

    Tpessoas vetor[4];
    FILE *arq1;
    FILE *arq2;
    arq1 = fopen("dados.txt", "r");
    if(arq1 != NULL)
    {
        for(int c = 0; c < 4; c++)
        {
            fscanf(arq1, "%[^\n]s\n", vetor[c].nome);
            fscanf(arq1, "%d\n", &vetor[c].idade);
            fscanf(arq1, "%f\n", &vetor[c].salario);
        }
    }
    fclose(arq1);
    arq2 = fopen("BackupDados.txt", "w");
    if(arq2 != NULL)
    {
        for(int c = 0; c < 4; c++)
        {
            fprintf(arq2, "%s\n", vetor[c].nome);
            fprintf(arq2, "%d\n", vetor[c].idade);
            fprintf(arq2, "%.2f\n", vetor[c].salario);
        }
    }
    fclose(arq2);
}