#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <windows.h>

typedef struct TPessoa
{
    char nome[100];
    float altura;
    float peso;
    char CPF[15];
    char sexo;
    float IMC;
} TPessoa;

int main(){
    // Exercício de Fixação 23 - Aula 4
    // Escrever um programa que cadastre o nome, a altura, o peso, o cpf e sexo
    // de 5 pessoas. Crie um registro para cadastrar essas informações. Com os
    // dados cadastrados, localize uma pessoa através do seu CPF e imprima o seu
    // IMC, o qual pode ser calculado por: IMC = Peso / Altura * Altura

    SetConsoleOutputCP(65001);
    TPessoa ListaPessoas[5];
    char CPF[15];
    bool achou = false;

    for(int c = 0; c < 1; c++)
    {
        printf("Insira o nome: ");
        scanf(" %[^\n]s", ListaPessoas[c].nome);
        printf("Insira a altura (M): ");
        scanf(" %f", &ListaPessoas[c].altura);
        printf("Insira o peso (Kg): ");
        scanf(" %f", &ListaPessoas[c].peso);
        printf("Insira o CPF: ");
        scanf(" %[^\n]s", ListaPessoas[c].CPF);
        printf("Insira o sexo (M/F): ");
        scanf(" %c", &ListaPessoas[c].sexo);
        ListaPessoas[c].IMC = ListaPessoas[c].peso / (ListaPessoas[c].altura * ListaPessoas[c].altura);
        printf("\n");
    }
    printf("Entre com o CPF para buscar o IMC: ");
    scanf(" %[^\n]s", CPF);
    int x = 0;
    while((!achou) && (x < 5))
    {
        if(strcmp(ListaPessoas[x].CPF, CPF) == 0)
        {
            achou = true;
            printf("IMC = %.2f", ListaPessoas[x].IMC);
        }
        x++;
    }
    if(!achou)
    {
        achou = true;
        printf("CPF não encontrado!");
    }
}