#include <stdio.h>
#include <windows.h>

int main(){
    SetConsoleOutputCP(65001);
    // Estou usando o Visual Studio Code, essa foi a única maneira que eu encontrei de usar os caracteres latinos.
    // O pacote <locale.h> não funcionou.

    float Custo_Maq, Sal_Min, Lucro, Sal_Cons, Comissao;
    int Consultores, Vendas_Maq;
    printf("Insira o número de consultores de vendas: ");
    scanf(" %d", &Consultores);
    printf("Insira o valor do salário mínimo: ");
    scanf(" %f", &Sal_Min);
    printf("Insira o preço de custo da máquina agrícola: ");
    scanf(" %f", &Custo_Maq);
    printf("Insira a quantidade de máquinas agrícolas Vendidas no mês: ");
    scanf(" %d", &Vendas_Maq);
    Comissao = 0.1*Custo_Maq*Vendas_Maq/Consultores;
    Sal_Cons = 2*Sal_Min + Comissao;
    Lucro = 1.5*Custo_Maq*Vendas_Maq - Sal_Cons*Consultores - Custo_Maq*Vendas_Maq;
    printf("Salário total de cada empregado: %.2f \n", Sal_Cons);
    printf("O lucro líquido: %.2f", Lucro);
}