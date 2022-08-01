#include <stdio.h>
#include <windows.h>
#include <stdlib.h>

void Ex1();
void Ex4();
void Ex13();
void Ex16();

int main(){
    // Exercícios - Estruturas de Dados Homogêneas e Heterogêneas - Aula 4

    int op;
    SetConsoleOutputCP(65001);
    printf("1 - Exercício 1 \n4 - Exercício 4\n 13 - Exercício 13\n 16 - Exercício 16\n\n");
    printf("Qual Exercício Deseja Acessar? ");
    scanf(" %d", &op);
    system("cls");
    switch(op){
        case(1):
            Ex1();
            break;
        case(4):
            Ex4();
            break;
        case(13):
            Ex13();
            break;
        case(16):
            Ex16();
            break;
    }
}

void Ex1(){
    // Exercício de Fixação 1 - Aula 4
    // Faça um programa que leia a nota de 20 alunos, calcule e mostre a média dessa
    // turma de alunos e a quantidade de alunos que estão acima da média da turma.

    float vetor[20], media;
    int c, apr;
    media = 0;
    apr = 0;
    printf("Insira as notas dos alunos \n");
    for(c = 0; c <= 4; c++)
    {
        scanf(" %f", &vetor[c]);
        media = media + vetor[c];
    }
    media = media/5;
    for(c = 0; c <= 4; c++)
    {
        if(vetor[c] > media)
        {
            apr = apr + 1;
        }
    }
    printf("A média da turma é igual a: %f \n", media);
    printf("%d alunos ficaram acima da média", apr);
}

void Ex4(){
    // Exercício de Fixação 4 - Aula 4
    // Faça um programa que preencha um vetor com 15 valores, determine e mostre:
    // a) o maior número e a posição por ele ocupada no vetor;
    // b) o menor número e a posição por ele ocupada no vetor;

    float vetor[4], menor, maior;
    int c, pos_men, pos_mai;
    printf("Insira os valores \n");
    for(c = 0; c <= 3; c++)
    {
        scanf(" %f", &vetor[c]);
        if(c == 0)
        {
            menor = vetor[c];
            maior = vetor[c];
        }
        if(vetor[c] >= maior)
        {
            maior = vetor[c];
            pos_mai = c;
        }
        if(vetor[c] <= menor)
        {
            menor = vetor[c];
            pos_men = c;
        }
    }
    printf("A posição e o valor do maior número são iguais a %d e %.2f , respectivamente \n", pos_mai, maior);
    printf("A posição e o valor do menor número são iguais a %d e %.2f , respectivamente", pos_men, menor);
}

void Ex13(){
    // Exercício de Fixação 13 - Aula 4
    // Faça um algoritmo que leia duas matrizes A e B, quadradas e de mesma ordem, e
    // realize a sua soma em uma nova matriz C, escrevendo-a ao final. A ordem máxima
    // das matrizes é 150×150 e deve ser lida do usuário logo no início do algoritmo.

    int i, j, k;
    float A[150][150], B[150][150], C[150][150];

    printf("Insira a ordem das matrizes: ");
    scanf(" %d", &k);
    printf("insira as entradas da matriz A: \n");
    for(i = 0; i < k; i++)
    {
        for(j = 0; j < k; j++)
        {
            printf("A[%d][%d] = ", i, j);
            scanf(" %f", &A[i][j]);
        }
    }
    printf("\n");
    printf("insira as entradas da matriz B: \n");
    for(i = 0; i < k; i++)
    {
        for(j = 0; j < k; j++)
        {
            printf("B[%d][%d] = ", i, j);
            scanf(" %f", &B[i][j]);
            C[i][j] = A[i][j] + B[i][j];
        }
    }
    printf("\n");
    printf("A Soma entre as matrizes A e B é igual a: \n");
    printf("\n");
    for(i = 0; i < k; i++)
    {
        for(j = 0; j < k; j++)
        {
            printf(" %.2f\t", C[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

void Ex16(){
    // Exercício de Fixação 16 - Aula 4
    // Elabore um programa que preencha uma matriz 4×5, calcule e mostre um vetor com
    // cinco posições, onde cada posição contém a soma dos elementos de cada coluna da
    // matriz. O programa deverá mostrar apenas os elementos do vetor maiores que dez.
    // Se não existir nenhum elemento maior que dez, deverá mostrar uma mensagem ao
    // usuário.

    float matriz[4][5], vetor[5];
    int cont = 0;
    printf("Insira as entradas da matriz: \n");
    vetor[4] = 0;
    for(int c = 0; c < 4; c++)
    {
        vetor[c] = 0;
        for(int j = 0; j < 4; j++)
        {
            printf("A[%d][%d] = ", c, j);
            scanf(" %f", &matriz[c][j]);
            vetor[c] = vetor[c] + matriz[c][j];
        }
        if(vetor[c] > 10)
            cont = cont + 1;
    }
    printf("\n");
    if(cont > 0)
    {
        printf("O vetor possui os seguintes elementos: ");
        for(int c = 0; c <= 4; c++)
        {
            printf("%.2f\t", vetor[c]);
        }
        printf("\n");
        printf("Os seguintes valores são maiores que 10: ");
        for(int c = 0; c <= 4; c++)
        {
            if(vetor[c] > 10)
                printf("%.2f\t", vetor[c]);
        }
    }
    else
        printf("Nenhuma coluna possui uma soma de elementos igual ou maior que 10");
}