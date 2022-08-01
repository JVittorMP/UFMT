#include <stdio.h>
#include <windows.h>

typedef struct TAtleta{
    int Codigo;
    char nome[50];
    int QtddVoltas;
    float *Tempos;
    float TempoTotal;
    float Media;
} TAtleta;

typedef struct Exib{
    int id;
    int Voltas;
    int Total;
    int Veloz;
} Exib;

int main(){
    SetConsoleOutputCP(65001);
    int atletas, Menor;
    Exib Exibicao;
    TAtleta *Competidores;
    // Leitura dos Dados
    printf("Indique a quantidade de atletas inscritos: ");
    scanf(" %d", &atletas);
    Competidores = (TAtleta *) malloc( sizeof(TAtleta) * atletas );
    printf("Insira as informações sobre os atletas: \n\n");
    for(int c = 0; c < atletas; c++)
    {
        Competidores[c].TempoTotal = 0;
        printf("Código: ");
        scanf(" %d", &Competidores[c].Codigo);
        printf("Nome: ");
        scanf(" %[^\n]s", Competidores[c].nome);
        printf("Número de voltas: ");
        scanf(" %d", &Competidores[c].QtddVoltas);
        Competidores[c].Tempos = (float *) malloc( sizeof(float) * Competidores[c].QtddVoltas );
        printf("Insira os tempos das voltas: \n");
        for(int d = 0; d < Competidores[c].QtddVoltas; d++)
        {
            printf("%dª Volta: ", d+1);
            scanf(" %f", &Competidores[c].Tempos[d]);
            Competidores[c].TempoTotal += Competidores[c].Tempos[d];
            if(c == 0 && d == 0)
                Exibicao.Veloz = Competidores[0].Tempos[0];
            if(Exibicao.Veloz > Competidores[c].Tempos[d])
                Exibicao.Veloz = Competidores[c].Tempos[d];
        }
        Competidores[c].Media = Competidores[c].TempoTotal / Competidores[c].QtddVoltas;
        printf("--------------------------------------------------\n");
    }
    // Determina o Vencedor
    Exibicao.Voltas = 0;
    for(int c = 0; c < atletas; c++)
    {
        if(Competidores[c].QtddVoltas >= Exibicao.Voltas)
        {
            if(Exibicao.Voltas == Competidores[c].QtddVoltas)
            {
                if(Competidores[c].TempoTotal < Exibicao.Total)
                {
                    Exibicao.id = c;
                    Exibicao.Total = Competidores[c].TempoTotal;
                }
            }
            if(Exibicao.Voltas < Competidores[c].QtddVoltas);
            {
                Exibicao.Voltas = Competidores[c].QtddVoltas;
                Exibicao.id = c;
                Exibicao.Total = Competidores[c].TempoTotal;
            }
        }
    }
    // Área de Exibição
    printf("Relação de Competidores\n");
    printf("Volta mais rápida: %d segundos\n\n", Exibicao.Veloz);
    for(int c = 0; c < atletas; c++)
    {
        Menor = 0;
        printf("Nome: %s ", Competidores[c].nome);
        if(Exibicao.id == c)
            printf("(Vencedor)");
        printf("\n");
        printf("Tempo Total: %.2f \n", Competidores[c].TempoTotal);
        printf("Tempo Médio: %.2f \n", Competidores[c].Media);
        for(int d = 0; d < Competidores[c].QtddVoltas; d++)
        {
            if(Competidores[c].Tempos[d] < Competidores[Exibicao.id].Media)
                Menor++;
        }
        printf("Voltas Abaixo da Média: %d \n\n", Menor);
    }
}