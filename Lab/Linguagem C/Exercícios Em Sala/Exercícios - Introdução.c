#include <stdio.h>
#include <windows.h>
#include <stdlib.h>

void Ex5();
void Ex6();

int main(){
    // Exercícios - Introdução à Linguagem C - Aula 1
    
    int op;
    SetConsoleOutputCP(65001);
    printf("5 - Exercício 5 \n6 - Exercício 6 \n");
    printf("Qual exercício deseja acessar? ");
    scanf(" %d", &op);
    system("cls");
    switch(op){
        case(5):
            Ex5();
            break;
        case(6):
            Ex6();
            break;
    }
}

void Ex5(){
    // Exercício de Fixação 5 - Aula 1
    // Faça um programa que receba as três notas, calcule e mostre essa média
    // ponderada do estudante, obedecendo aos critérios informados abaixo:
    // Laboratório: Peso 2 | Avaliação: Peso 3 | Exame Final: Peso 5

    float lab, aval, exf, media;

    printf("Insira a nota do trabalho de laboratorio: ");
    scanf("%f", &lab);
    printf("Insira a nota da avaliacao semestral: ");
    scanf("%f", &aval);
    printf("Insira a nota do exame final: ");
    scanf("%f", &exf);

    media = (lab*2 + aval*3 + exf*5)/10;
    printf("a media e igual a: %f", media);
}

void Ex6(){
    // Exercício de Fixação 6 - Aula 1
    // Faça um programa em C que solicite os valores de Resistência e Corrente de um
    // circuito e depois mostre para o usuário os valores de tensão e potência.

    int Cor, Res;

    printf("Exercício de Fixação 6: \n");
    printf("Insira os seguintes parâmetros: \n");
    printf("Resistência: ");
    scanf(" %d", &Res);
    printf("Corrente: ");
    scanf(" %d", &Cor);
    printf("A tensão do sistema analizado é igual a: %d \n", Cor*Res);
    printf("A potência do sistema analizado é igual a: %d", Cor*Res*Cor);
}