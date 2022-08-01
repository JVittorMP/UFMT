#include <stdio.h>

int main(){
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

int main(){
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