programa
{
	
	funcao inicio()
	{
		// Exercício 1

		inteiro DiagP[6][6]
		caracter apagar
		escreva("Algoritmo 1: Algoritmo de Impressão da Diagonal Principal \n")
		escreva("\n")
		escreva("Matriz 6x6 \n")
		escreva("\n")
		para(inteiro c=0; c<6; c++)
		{
			para(inteiro l=0; l<6; l++)
			{
				escreva("Insira o valor: ")
				leia(DiagP[c][l])
			}
		}
		escreva("\n")
		escreva("A diagonal principal é formada pelos seguintes elementos: \n")
		escreva("\n")
		para(inteiro l=0; l<6; l++)
		{
			para(inteiro c=0; c<6; c++)
			{
				se(c==l)
				{
					escreva("Termo [", l+1, ",", c+1,"]: ", DiagP[c][l], "\n")
				}
			}
		}
		escreva("\n")
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()
		
		// Exercício 2

		inteiro Soma[4][4], Total[4]
		escreva("Algoritmo 2: Soma dos Valores das Colunas de uma Matriz \n")
		escreva("\n")
		para(inteiro c = 0; c < 4; c++)
		{
			escreva(c+1, "ª Coluna \n")
			Total[c] = 0
			para(inteiro l = 0; l < 4; l++)
			{
				escreva("Insira o valor: ")
				leia(Soma[l][c])
				Total[c] = Total[c] + Soma[l][c]
			}
			escreva("\n")
		}
		para(inteiro p = 0; p < 4; p++)
		{
			escreva("A somatória dos elementos da coluna ", p+1 ," é: ", Total[p], "\n")
		}
		escreva("\n")
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()

		// Exercício 3

		inteiro M1[10][10], QuebraLinha
		escreva("Algoritmo 3: Impressão dos Números Acima da Diagonal Principal \n")
		escreva("\n")
		escreva("Matriz 10 x 10 \n")
		para(inteiro l = 0; l < 10; l++)
		{
			para(inteiro c = 0; c < 10; c++)
			{
				escreva("Insira o valor: ")
				leia(M1[l][c])
			}
		}
		escreva("Os seguintes valores estão acima da diagonal principal: \n")
		QuebraLinha = 0
		para(inteiro l = 0; l < 10; l++)
		{
			para(inteiro c = 0; c < 10; c++)
			{
				se(c>l)
				{
					QuebraLinha = QuebraLinha + 1
					se(c != 9)
						escreva("| Posição [ 0", l+1, ",0", c+1, " ]: ", M1[l][c], " |")
					senao
						escreva("| Posição [ 0", l+1, ",", c+1, " ]: ", M1[l][c], " |")
					se(QuebraLinha == 5)
					{
						escreva("\n")
						QuebraLinha = 0
					}
				}
			}
		}
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()
		
		// Exercício 4

		inteiro matriz[5][4]
		real Pag

		escreva("Algoritmo 4: Determinação do Salário - Salão de Cabeleleiro Sempre Bela \n")
		escreva("----------------------------------------------------------------------- \n")
		escreva("\n")
		para(inteiro l = 0; l < 5; l++)
		{	
			escreva("Funcionária ", l+1, "\n")
			escreva("\n")
			para(inteiro c = 0; c < 4; c++)
			{	
		 		se(c==0)
		 		{
		 			escreva("- Insira a quantidade de trabalhos de manicure realizados:  ")
		 			leia(matriz[l][c])
				}
		 		se(c==1)
		 		{
		 			escreva("- Insira a quantidade de trabalhos de pedicure realizados:  ")
		 			leia(matriz[l][c])
		 		}
		 		se(c==2)
		 		{
		 			escreva("- Insira a quantidade de trabalhos de podologia realizados: ")
		 			leia(matriz[l][c])
				}
			}
			escreva("\n")
			matriz[l][3] = matriz[l][0]*10 + matriz[l][1]*15 + matriz[l][2]*30
			Pag = matriz[l][3]/2.0
			escreva("A funcionária ", l+1, " deve receber ", Pag, " reais \n")
			escreva("\n")
			escreva("----------------------------------------------------------------------- \n")
			escreva("\n")
		}
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()

		// Exercício 5

		inteiro Fat[10][2], Aux, Con, FatAux
		escreva("Algoritmo 5: Algoritmo Fatorial \n")
		escreva("Insira os valores: \n")
		Con = 0
		para(inteiro l=0; l<10; l++)
		{
			escreva("Insira o ", l+1, "º Valor: ")
			leia(Aux)
			se(Aux>0)
			{	
				Con = Con + 1
				Fat[l][0] = Aux
			}
			senao
			{
				escreva("\n", "O valor inserido é inválido! \n", "Insira um valor inteiro e maior que 0! \n", "\n")
				escreva("Insira o ", l+1, "º Valor: ")
				leia(Aux)
				Fat[l][0] = Aux
			}
		}
		escreva("\n")
		para(inteiro l=0; l<10; l++)
		{	
			Con = Fat[l][0]
			FatAux = Fat[l][0]
			se(FatAux<2)
			{
				Fat[l][1] = 1
				escreva("O fatorial do ", l+1, "º número inserido é igual a: ", 1, "\n")
			}
			se(FatAux>1)
			{
				enquanto(Con!=1)
				{
					FatAux = FatAux*(Con - 1)
					Con = Con - 1
				}
				Fat[l][1] = FatAux
				escreva("O fatorial do ", l+1, "º número inserido é igual a: ", Fat[l][1], "\n")
			}
		}
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()

		// Exercício 6

		inteiro MatTS[8][8]
		escreva("Algoritmo 6: Matriz Triangular Inferior \n")
		escreva("Insira os valores: \n")
		para(inteiro c=0; c<8; c++)
		{
			para(inteiro l=0; l<8; l++)
			{
				leia(MatTS[l][c])
				se(l>c)
				{
					MatTS[l][c] = 0
				}
			}
		}
		limpa()
		escreva("\n")
		escreva("Matriz 8x8: \n")
		para(inteiro c=0; c<8; c++)
		{
			para(inteiro l=0; l<8; l++)
			{
				escreva(MatTS[l][c], "\t")
				se(l==7)
				escreva("\n")
			}
		}

		// Exercício 7

		real MatAlt[5][10], MaiorAlt[5]
		escreva("Algoritmo 7: Altura dos Atletas das Delegações \n")
		escreva("Insira as alturas dos atletas (Metros): \n")
		escreva("\n")
		para(inteiro l=0; l<5; l++)
		{
			escreva(l+1, "ª Delegação \n")
			escreva("\n")
			MaiorAlt[l] = 0.0
			para(inteiro c=0; c<10; c++)
			{
				leia(MatAlt[l][c])
				se(MaiorAlt[0] < MatAlt[0][c])
				MaiorAlt[0] = MatAlt[0][c]
				se(MaiorAlt[1] < MatAlt[1][c])
				MaiorAlt[1] = MatAlt[1][c]
				se(MaiorAlt[2] < MatAlt[2][c])
				MaiorAlt[2] = MatAlt[2][c]
				se(MaiorAlt[3] < MatAlt[3][c])
				MaiorAlt[3] = MatAlt[3][c]
				se(MaiorAlt[4] < MatAlt[4][c])
				MaiorAlt[4] = MatAlt[4][c]
			}
			escreva("\n")
		}
		para(inteiro l=0; l<5; l++)
		{
			escreva("A maior altura da ", l+1, "ª delegação é: ", MaiorAlt[l], "\n")
		}
		escreva("Quer limpar a tela? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()

		// Exercício 8

		real Vendas[12][4], VMes[12], VSem[4], Tot, Int
		escreva("Algoritmo 8: Algoritmo de Relação de Vendas \n")
		escreva("Insira os valores para as seguintes relações de vendas (R$): \n")
		escreva("\n")
		Tot = 0.0
		para(inteiro l=0; l<12; l++)
		{
			escreva(l+1, "º Mês \n")
			escreva("\n")
			para(inteiro c=0; c<4; c++)
			{
				escreva(c+1, "ª Semana: ")
				leia(Vendas[l][c])
			}
			escreva("\n")
		}
		escreva("\n")
		escreva("Deseja visualizar os resultados? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()
		escreva("\n")
		escreva("Total vendido em cada mês do ano: \n")
		escreva("\n")
		para(inteiro l=0; l<12; l++)
		{	
			VMes[l] = 0.0
			para(inteiro c=0; c<4; c++)
			{
				Int = Vendas[l][c]
				VMes[l] = VMes[l] + Int
				Tot = Tot + Vendas[l][c]
			}
		}
		para(inteiro l=0; l<12; l++)
		{
			escreva(l+1, "º mês: ", VMes[l], " reais \n")
		}
		escreva("\n")
		escreva("Deseja continuar? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()
		escreva("\n")
		escreva("Total vendido em cada semana durante todo o ano: \n")
		escreva("\n")
		para(inteiro c=0; c<4; c++)
		{	
			VSem[c] = 0.0
			para(inteiro l=0; l<12; l++)
			{
				Int = Vendas[l][c]
				VSem[c] = VSem[c] + Int
				Tot = Tot + Vendas[l][c]
			}
		}
		para(inteiro c=0; c<4; c++)
		{
			escreva(c+1, "ª semana: ", VSem[c], " reais \n")
		}
		escreva("\n")
		escreva("Deseja continuar? (s/n): ")
		leia(apagar)
		se(apagar == 's' ou apagar == 'S')
		limpa()
		escreva("O total vendido no ano é igual a: ", Tot, " reais")
	}
}
