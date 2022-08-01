#include <stdio.h>
#include <windows.h>
#include <stdlib.h>

void Ex1();
void Ex2();

int main(){
    // Exercícios - Estruturas de Repetição - Aula 3

    int op;
    SetConsoleOutputCP(65001);
    printf("1 - Exercício 1 \n2 - Exercício 2 \n");
    printf("Qual exercício deseja acessar? ");
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
    // Exercício de Fixação 1 - Aula 3
    // Usando o comando while, refaça um algoritmo que leia 5 números
    // e some os seus valores e no final imprima o resultado da soma

    float x, c = 0, soma = 0;
    printf("Insira 5 números para realizar a soma: \n");
    while(c < 5){
        scanf(" %f", &x);
        soma = soma + x;
        c = c + 1;
    }
    printf("A soma é igual a: %.2f", soma);
}

void Ex2(){
    // Exercício de Fixação 2 - Aula 3
    // Usando o comando while, faça um algoritmo que leia um número indeterminado
    // de dados contendo cada um a idade de um indivíduo. A última linha, que não
    // entrará nos cálculos, deverá ser um valor da idade igual ou menor a zero. Calcule
    // e escreva a idade média deste grupo de indivíduos.

    int idade, cont;
    float media;

    idade = 1;
    media = 0;
    cont = 0;
    printf("Insira a idade dos participantes: \n");
    while(idade > 0)
    {
        scanf(" %d", &idade);
        if(idade > 0)
        {
            media = media + idade;
            cont = cont + 1;
        }
    }
    printf("A idade média dos indivíduos desse grupo é igual a: %.2f", media = media/cont);
}