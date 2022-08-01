#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <stdbool.h>

void Op1();
void Op2();
void Op3();
void Rep();

typedef struct Funcionarios{
    char Nome[100];
    char Cargo[100];
    float Salario;
    int Dependentes;
} Funcionarios;

int main(){
    SetConsoleOutputCP(65001);
    Menu();
}

void Menu(){
    int opc;
    printf(" 1 - Quantidade de Funcionários \n");
    printf(" 2 - Técnicos em Eletrônica com Dependentes e + 2 Sal. Min. \n");
    printf(" 3 - Incluir Novo Funcionário \n 0 - Sair do Programa \n\n");
    printf("Selecione a opção desejada: ");
    scanf(" %d", &opc);
    while(opc < 0 || opc > 3)
    {
        printf("Selecione a opção desejada: \n");
        scanf(" %d", &opc);
    }
    system("cls");
    switch(opc){
        case 1:
            Op1();
            break;
        case 2:
            Op2();
            break;
        case 3:
            Op3();
            break;
        case 0:
            break;
    }
}

void Op1(){
    int cont = 0;
    bool saida = false;
    char confirma;
    Funcionarios aux;
    FILE *arqv;
    arqv = fopen("Funcionarios.dat", "rb");
    if(arqv != NULL)
    {
        while(1)
        {
            fread(&aux, sizeof(Funcionarios), 1, arqv);
            if(feof(arqv))
                break;
            cont++;
        }
    }
    fclose(arqv);
    printf("Há %d funcionários registrados na empresa \n\n", cont);
    Rep();
}

void Op2(){
    float SalMin = 1212.0;
    int pos = 0;
    Funcionarios aux;
    FILE *arqv;
    arqv = fopen("Funcionarios.dat", "rb");
    printf("Funcionários: \n\n");
    if(arqv != NULL)
    {
        while(1)
        {
            fread(&aux, sizeof(Funcionarios), 1, arqv);
            if(feof(arqv))
                break;
            if(aux.Dependentes > 0 && aux.Salario <= SalMin*2 && (strcmp(aux.Cargo, "Tecnico em Eletronica") == 0 || strcmp(aux.Cargo, "tecnico em eletronica") == 0))
            {
                pos++;
                printf("Funcionário %d: %s \n", pos, aux.Nome);
            }
        }
    }
    printf("\n");
    fclose(arqv);
    Rep();
}

void Op3(){
    Funcionarios NovoFunc;
    FILE *arqv;
    arqv = fopen("Funcionarios.dat", "ab");
    printf("Insira as informações do funcionário: \n\n");
    if(arqv != NULL)
    {
        printf("Nome: ");
        scanf(" %[^\n]s", NovoFunc.Nome);
        printf("Cargo: ");
        scanf(" %[^\n]s", NovoFunc.Cargo);
        printf("Salário: ");
        scanf(" %f", &NovoFunc.Salario);
        printf("Número de Dependentes: ");
        scanf(" %d", &NovoFunc.Dependentes);
    }
    fwrite(&NovoFunc, sizeof(Funcionarios), 1, arqv);
    fclose(arqv);
    system("cls");
    Menu();
}

void Rep(){
    bool saida = false;
    char confirma;
    while(!saida)
    {
        printf("Deseja retornar ao menu inicial? (S/N): ");
        scanf(" %c", &confirma);
        if(confirma == 's' || confirma == 'S')
            saida = true;
    }
    system("cls");
    Menu();
}