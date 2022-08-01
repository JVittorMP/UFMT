#include <stdio.h>
#include <windows.h>
#include <stdlib.h>

void T1();
void T2();

int main(){
    int op;
    SetConsoleOutputCP(65001);
    printf("1 - Teste 1 \n2 - Teste 2\n\n");
    printf("Qual Exercício Deseja Acessar? ");
    scanf(" %d", &op);
    system("cls");
    switch(op){
        case(1):
            T1();
            break;
        case(2):
            T2();
            break;
    }
}

void T1(){
    // Teste 1
    int m, n, o;
    char cidade[100];
    printf("Digite 3 numeros: \n");
    scanf(" %d %d %d" , &m, &n, &o);
    printf("Os valores digitados foram %d %d %d \n", m, n, o);

    printf("Digite o nome de uma cidade: ");
    scanf(" %[^\n]s", cidade);
    printf("A cidade e %s \n", cidade);
}

void T2(){
    // Teste 2
    int idade;
    char nome[100], CPF[15];
    printf("Entre com o nome: ");
    scanf(" %[^\n]s", nome);
    printf("Entre com a idade: ");
    scanf(" %d", &idade);
    printf("Entre com o CPF: ");
    scanf(" %[^\n]s", CPF);
    printf("\n");
    printf("Nome: %s \n", nome);
    printf("Idade: %d \n", idade);
    printf("CPF: %[^\n]s", CPF);
}
