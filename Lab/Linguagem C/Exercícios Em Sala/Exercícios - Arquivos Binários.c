#include <stdio.h>
#include <windows.h>

// Exercício de Fixação 6 - Aula 6 - Arquivos
// Controle de Bolsistas de Uma Instituição

typedef struct Bolsa {
    int codigo;
    char nome[30];
    int tipoBolsa;
    char email[30];
} Bolsa;

int main(){
    SetConsoleOutputCP(65001);
    Bolsa *cadastro;
    Bolsa novoNome;
    FILE *arq1;
    int num;

    // Leitura dos Dados e Gravação no Arquivo
    printf("Quantos bolsistas serão computados? ");
    scanf(" %d", &num);
    while(num < 5)
    {
         printf("Devem ser computados ao menos 5 bolsistas! ");
         scanf(" %d", &num);
    }
    cadastro = (Bolsa *) malloc( sizeof(Bolsa) * num );
    arq1 = fopen("bolsista1.cad", "wb");
    printf("Insira as informações: \n\n");
    for(int c = 0; c < num; c++)
    {
        printf("código: ");
        scanf(" %d", &cadastro[c].codigo);
        while(cadastro[c].codigo < 1 || cadastro[c].codigo > 25)
        {
            printf("Cógido inválido! ");
            printf("O código deve estar no intervalo 1-25 \n");
            scanf(" %d", &cadastro[c].codigo);
        }
        printf("nome: ");
        scanf(" %[^\n]s", cadastro[c].nome);
        printf("Tipo de Bolsa (1: Trabalho; 2: Iniciação; 3: Pesquisa): ");
        scanf(" %d", &cadastro[c].tipoBolsa);
        while(cadastro[c].tipoBolsa != 1 && cadastro[c].tipoBolsa != 2 && cadastro[c].tipoBolsa != 3)
        {
            printf("Tipo Inválido! ");
            scanf(" %d", &cadastro[c].tipoBolsa);
        }
        printf("E-mail: ");
        scanf(" %[^\n]s", cadastro[c].email);
        printf("\n");
    }
    fwrite(cadastro, sizeof(Bolsa), 5, arq1);
    fclose(arq1);

    // Listagem do Arquivo
    arq1 = fopen("bolsista1.cad", "rb");
    if(arq1 != NULL)
    {
        fread(cadastro, sizeof(Bolsa), num, arq1);
        for(int c = 0; c < num; c++)
        {
            printf("%d - %s - %d - %s \n", cadastro[c].codigo, cadastro[c].nome, cadastro[c].tipoBolsa, cadastro[c].email);
        }
    }
    fclose(arq1);

    // Troca do Nome no 3º Registro
    arq1 = fopen("bolsista1.cad", "r+wb"); // Modo de leitura 'r+wb' foi utilizado para permitir leitura e escrita
    if(arq1 != NULL)
    {
        fseek(arq1, sizeof(Bolsa) * 2, SEEK_SET);
        fread(&novoNome, sizeof(Bolsa), 1, arq1);
        printf("Nome do bolsista: %s \n", cadastro[2].nome);
        printf("Deseja alterar para qual nome? ");
        scanf(" %[^\n]s", novoNome.nome);
        fseek(arq1, sizeof(Bolsa) * 2, SEEK_SET);
        fwrite(&novoNome, sizeof(Bolsa), 1, arq1);
        fflush(arq1);
        // Exibição do Arquivo Alterado
        printf("Arquivo Alterado: \n\n");
        rewind(arq1);
        fread(cadastro, sizeof(Bolsa), 5, arq1);
        for(int c = 0; c < num; c++)
        {
            printf("%d - %s - %d - %s \n", cadastro[c].codigo, cadastro[c].nome, cadastro[c].tipoBolsa, cadastro[c].email);
        }
        fclose(arq1);
    }
}