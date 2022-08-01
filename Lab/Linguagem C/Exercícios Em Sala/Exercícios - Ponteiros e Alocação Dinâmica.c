#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

void Ex5();
void Ex10();

typedef struct Cadastro {
    char nome[100];
    float altura;
    float peso;
    char CPF[13];
    char sexo;
    float IMC;
} Cadastro;

int main(){
    // Exercícios - Ponteiros e Alocação Dinâmica - Aula 5
    int op;
    SetConsoleOutputCP(65001);
    printf("5 - Exercício 5 \n10 - Exercício 10\n\n");
    printf("Qual Exercício Deseja Acessar? ");
    scanf(" %d", &op);
    system("cls");
    switch(op){
        case(5):
            Ex5();
            break;
        case(10):
            Ex10();
            break;
    }
}

void Ex5(){
    // Exercício de Fixação 5 - Aula 5
    float a;
    float *p;
    printf("Insira um número real: ");
    scanf(" %f", &a);
    printf("%.2f \n", a);
    printf("%x \n", a);
    printf("%.2f \n", p);
    printf("%x \n", p);
    p = &a;
    printf("%.2f", *p);
}

void Ex10(){
    // Exercício de Fixação 10 - Aula 5
    // Escrever um programa que cadastre o nome, a altura, o peso, o cpf e sexo de
    // algumas pessoas. A quantidade de pessoas deve ser perguntada ao usuário e a
    // alocação e liberação dos dados deve ocorrer com as funções malloc e free.
    // Com os dados cadastrados, em seguida localizar uma pessoas através do seu CPF
    // e imprimir o seu IMC

    Cadastro *dados;
    int cad, c;
    char CPF[13];
    bool achou = false;

    printf("Quantas pessoas realizarão o cadastro? ");
    scanf(" %d", &cad);
    printf("\n\n");

    // Alocação de Memória
    dados = (Cadastro *) malloc(sizeof(Cadastro) * cad);
    if(dados != NULL)
    {
        printf("Insira as informações pedidas: \n");
        for(c = 0; c < cad; c++)
        {
            printf("Nome: ");
            scanf(" %[^\n]s", dados[c].nome);
            printf("Altura: ");
            scanf(" %f", &dados[c].altura);
            printf("Peso: ");
            scanf(" %f", &dados[c].peso);
            printf("CPF: ");
            scanf(" %[^\n]s", dados[c].CPF);
            printf("Sexo (F/M): ");
            scanf(" %c", &dados[c].sexo);
            dados[c].IMC = dados[c].peso / (dados[c].altura * dados[c].altura);
            printf("\n\n");
        }
        // Exibição do IMC
        printf("Entre com o CPF cujo IMC deseja encontrar: ");
        scanf(" %[^\n]s", CPF);
        c = 0;
        while(c < cad && !achou)
        {
            if(strcmp(CPF, dados[c].CPF) == 0)
            {
                printf("%s - %s - %f \n", dados[c].nome, dados[c].CPF, dados[c].IMC);
                achou = true;
            }
            else
                c++;
        }
        if(c == cad)
            printf("CPF não encontrado!");
        free(dados);
    }
    else
        printf("Falha na alocação de memória!");
}