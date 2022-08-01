#include <stdio.h>
#include <windows.h>

typedef struct disciplinas {
    char disciplina[101];
    float nota;
    int CargaH, semestre;
} disciplinas;

typedef struct ALunos {
    char nome[100];
    char RGA[13];
    int QtddDisc, reprovacoes;
    int Cursando;
    float CRE;
    disciplinas Bolsa[100];
} Alunos;

typedef struct ganhador {
    float coeficiente;
    int numrepr, posicao;
} ganhador;

int main(){
    SetConsoleOutputCP(65001);
    int p, CHT;
    ganhador Selecionado;
    Selecionado.coeficiente = 0.0;
    printf("Insira a quantidade de candidatos: ");
    scanf(" %d", &p);
    Alunos Concorrentes[p];
    //Entrada de Informações
    for(int c = 0; c < p; c++)
    {
        CHT = 0;
        Concorrentes[c].reprovacoes = 0;
        printf("\n ------------- Painel de Alunos ------------- \n");
        printf("Insira o nome: ");
        scanf(" %[^\n]s", Concorrentes[c].nome);
        printf("Insira o RGA: ");
        scanf(" %[^\n]s", Concorrentes[c].RGA);
        printf("Insira a quantidade de disciplinas cursadas: ");
        scanf(" %d", &Concorrentes[c].QtddDisc);
        printf("\n ---------- Painel de Disciplinas ---------- \n");
        if(Concorrentes[c].QtddDisc > 0 && Concorrentes[c].QtddDisc <= 100)
        {   
            //Entrada de Disciplinas
            for(int d = 0; d < Concorrentes[c].QtddDisc; d++)
            {
                printf("Semestre: ");
                scanf(" %d", &Concorrentes[c].Bolsa[d].semestre);
                printf("Disciplina: ");
                scanf(" %[^\n]s", Concorrentes[c].Bolsa[d].disciplina);
                printf("Nota: ");
                scanf(" %f", &Concorrentes[c].Bolsa[d].nota);
                printf("Carga Horária: ");
                scanf(" %d", &Concorrentes[c].Bolsa[d].CargaH);
                if(Concorrentes[c].Bolsa[d].nota < 5.0)
                    Concorrentes[c].reprovacoes += 1;
                Concorrentes[c].CRE += (Concorrentes[c].Bolsa[d].nota * Concorrentes[c].Bolsa[d].CargaH);
                CHT += Concorrentes[c].Bolsa[d].CargaH;
                if(d == Concorrentes[c].QtddDisc - 1)
                    Concorrentes[c].Cursando = Concorrentes[c].Bolsa[d].semestre + 1;
                printf("-------------------------------------------- \n \n");
            }
            Concorrentes[c].CRE = Concorrentes[c].CRE/CHT; // Calcula o CRE e armazena para cada aluno
            if(Concorrentes[c].CRE >= Selecionado.coeficiente)
            {
                if(Concorrentes[c].CRE > Selecionado.coeficiente)
                {
                    Selecionado.coeficiente = Concorrentes[c].CRE;
                    Selecionado.posicao = c;
                    Selecionado.numrepr = Concorrentes[c].reprovacoes;
                }
                if(Concorrentes[c].CRE == Selecionado.coeficiente)
                {
                    if(Concorrentes[c].reprovacoes < Selecionado.numrepr)
                    {
                        Selecionado.coeficiente = Concorrentes[c].CRE;
                        Selecionado.posicao = c;
                        Selecionado.numrepr = Concorrentes[c].reprovacoes;
                    }
                }
            }
        }
        else
        {    
            printf("O número de disciplinas é superior à quantidade delimitada");
            break;
        }
    }
    //Exibição dos Resultados
    for(int c = 0; c < p; c++)
    {
        printf("---------- %dº Aluno ---------- \n", c + 1);
        printf("Nome: %s \n", Concorrentes[c].nome);
        printf("CRE: %.2f \n", Concorrentes[c].CRE);
        printf("Semestre que está cursando: %d \n", Concorrentes[c].Cursando);
        printf("Total de disciplinas reprovadas: %d \n", Concorrentes[c].reprovacoes);
    }
    printf("\n--------------- Vencedor ---------------\n");
    printf("Aluno Selecionado: %s \n", Concorrentes[Selecionado.posicao].nome);
    printf("Coeficiente: %.2f \n", Selecionado.coeficiente);
    printf("Quantidade de Reprovações: %d \n \n", Selecionado.numrepr);
}