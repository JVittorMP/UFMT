programa
{	inclua biblioteca Matematica --> mat

	funcao inicio()
	{
		escreva("Olá, Mundo!")
	}
	
	funcao Ex1()
	{
		// Exercício 1

		inteiro Elementos[50]
		inteiro Maior
		escreva("Algortimo 1: Determinar o Maior Elemento Dentro de um Vetor \n")
		escreva("Insira valores repetidamente até um total de 50 elementos \n")
		escreva("\n")
		Maior = 0
		para(inteiro c=0; c<50; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Elementos[c])
			se(Elementos[c] > Maior)
			{
				Maior = Elementos[c]
			}
		}
		escreva("O maior elemento dentre os inseridos é: ", Maior)
	}

	funcao Ex2()
	{
		// Exercício 2

		inteiro Elementos[10]
		inteiro SPar, SImp
		escreva("Algoritmo 2: Somar Números Pares e ímpares Individualmente \n")
		escreva("Insira 10 valores inteiros \n")
		escreva("\n")
		SPar = 0
		SImp = 0
		para(inteiro c=0; c<10; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Elementos[c])
			se(Elementos[c]%2==0)
			{
				SPar = SPar + Elementos[c]
			}
			se(Elementos[c]%2==1)
			{
				SImp = SImp + Elementos[c]
			}
		}
		escreva("\n")
		escreva("A soma dos elementos pares é igual a: ", SPar, "\n")
		escreva("A soma dos elementos ímpares é igual a: ", SImp)
	}

	funcao Ex3()
	{
		// Exercício 3

		inteiro Vetor1[6], Vetor2[6], Soma[6]
		escreva("Algoritmo 3: Soma dos Elementos Equivalentes \n")
		escreva("Insira 6 valores inteiros para cada conjunto abaixo: \n")
		escreva("\n")
		escreva("Conjunto N° 1: \n")
		para(inteiro c=0; c<6; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Vetor1[c])
		}
		escreva("\n")
		escreva("Conjunto N° 2: \n")
		para(inteiro c=0; c<6; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Vetor2[c])
		}
		limpa()
		escreva("Conjunto Soma C1 + C2 \n")
		para(inteiro c=0; c<6; c++)
		{
			Soma[c] = Vetor1[c] + Vetor2[c]
			escreva("Elemento ", c+1, ": ", Soma[c])
			se(c<5) escreva("\n")
		}
	}

	funcao Ex4()
	{
		// Exercício 4

		inteiro Vetor1[6], Vetor2[6], Soma[6]
		escreva("Algoritmo 4: Soma dos Elementos Opostos \n")
		escreva("Insira 6 valores inteiros para cada conjunto abaixo: \n")
		escreva("\n")
		escreva("Conjunto N° 1: \n")
		para(inteiro c=0; c<6; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Vetor1[c])
		}
		escreva("\n")
		escreva("Conjunto N° 2: \n")
		para(inteiro c=0; c<6; c++)
		{
			escreva("Elemento ", c+1, ": ")
			leia(Vetor2[c])
		}
		limpa()
		escreva("Conjunto Soma C1 + C2 \n")
		para(inteiro c=0; c<6; c++)
		{
			Soma[c] = Vetor1[c] + Vetor2[5-c]
			escreva("Elemento ", c+1, ": ", Soma[c])
			se(c<5) escreva("\n")
		}
	}

	funcao Ex5()
	{
		// Exercício 5

		cadeia Times[3]
		escreva("Algoritmo 5: Tabela de Partídas de Futebol \n")
		escreva("\n")
		escreva("----------------------- \n")
		escreva(" Campeonato de Futebol  \n")
		escreva("----------------------- \n")
		escreva("\n")
		escreva("Insira o nome dos 3 times participantes \n")
		para(inteiro c=0; c<3; c++)
		{
			escreva("Time N° ", c+1, ": ")
			leia(Times[c])
		}
		limpa()
		escreva("---------------------- \n")
		escreva("  Tabela de Partidas   \n")
		escreva("---------------------- \n")
		escreva("\n")
		para(inteiro c=0; c<3; c++)
		{
			para(inteiro j=0; j<3; j++)
			{	
				se(c!=j) escreva(Times[c], " [] x [] ", Times[j], "\n")
			}
		}
	}

	funcao Ex6()
	{
		// Exercício 6

		caracter Gabarito[5], Respostas[5]
		cadeia Alunos[3]
		real Notas[3], NotaTotal, MediaTurma
		escreva("Algoritmo 6: Correção de Provas \n")
		escreva("\n")
		escreva("---------------------- \n")
		escreva(" Registro do Gabarito  \n")
		escreva("---------------------- \n")
		escreva("\n")
		para(inteiro c=0; c<5; c++)
		{
			escreva("Gabarito da Questão N° ", c+1, ": ")
			leia(Gabarito[c])
		}
		limpa()
		MediaTurma = 0.0
		para(inteiro c=0; c<3; c++)
		{
			NotaTotal = 0.0
			escreva("----------------------- \n")
			escreva("         Aluno ", c+1, "\n")
			escreva("----------------------- \n")
			escreva("\n")
			escreva("Nome: ")
			leia(Alunos[c])
			escreva("\n")
			para(inteiro j=0; j<5; j++)
			{
				escreva("Resposta ", j+1, ": ")
				leia(Respostas[j])
				se(Respostas[j] == Gabarito[j])
				{
					NotaTotal = NotaTotal + 2
				}
			}
			Notas[c] = NotaTotal
			MediaTurma = MediaTurma + Notas[c]
			limpa()
		}
		escreva("----------------------- \n")
		escreva("   Relação de Alunos    \n")
		escreva("----------------------- \n")
		escreva("\n")
		para(inteiro c=0; c<3; c++)
		{
			escreva(Alunos[c], ": ", Notas[c], "\n")
		}
		escreva("\n")
		escreva("--------------------------------------------- \n")
		escreva("\n")
		escreva("A média da turma é igual a: ", MediaTurma/3, "\n")
	}

	funcao Ex7()
	{
		// Exercício 7
	
		real Altura[50], TotAltM, MaiorAlt, MediaAltM
		inteiro Sexo[50], Quantidade
		escreva("Algoritmo 7: Mecanismo de Avaliação da Altura \n")
		escreva("Informe a altura e o sexo dos alunos registrados abaixo \n")
		escreva("\n")
		escreva("------------------------------------------------- \n")
		escreva("                    Descrição                     \n")
		escreva("------------------------------------------------- \n")
		escreva("\n")
		escreva("Sexo: \n - Masculino = 1 \n - Feminino  = 2 \n")
		escreva("\n")
		escreva("Altura: Deve ser expressa em metros (Ex: 1.59 m)  \n")
		escreva("------------------------------------------------- \n")
		escreva("\n")
		MaiorAlt = 0.0
		TotAltM = 0.0
		Quantidade = 0
		para(inteiro c=0; c<50; c++)
		{
			escreva("Aluno ", c+1, "\n")
			escreva("Sexo: ")
			leia(Sexo[c])
			se(Sexo[c] != 1 e Sexo[c] != 2)
			{
				escreva("Erro! O valor inserido não corresponde a uma entrada válida. \n")
				escreva("\n")
			}
			escreva("Altura: ")
			leia(Altura[c])
			escreva("\n")
			se(Sexo[c] == 2) 
			{
				TotAltM = TotAltM + Altura[c]
				Quantidade = Quantidade + 1
			}
			se(MaiorAlt < Altura[c]) MaiorAlt = Altura[c]
		}
		MediaAltM = TotAltM/Quantidade
		Quantidade = 0
		para(inteiro c=0; c<50; c++)
		{
			se(Sexo[c] == 2 e Altura[c] > MediaAltM) Quantidade = Quantidade + 1
		}
		escreva("Há um total de ", Quantidade, "mulheres acima da altura média das mulheres da sala")
	}

	funcao Ex8()
	{
		// Exercício 8

		real raiz[15], Aux
		escreva("Algoritmo 8: Raiz Quadrada dos Valores Inseridos \n")
		escreva("Insira 15 valores: \n")
		para(inteiro c = 0; c <15; c++)
		{
			se(c+1 < 10)
			escreva("0", c+1, "º Valor: ")
			senao
			escreva(c+1, "º Valor: ")
			leia(Aux)
			se(Aux < 0)
			raiz[c] = -1.0
			senao
			{
				Aux = mat.raiz(Aux,2.0)
				raiz[c] = Aux
			}
		}
		limpa()
		para(inteiro c = 0; c <15; c++)
		{
			se(c+1 < 10)
			escreva("O 0", c+1, "º valor armazenado é igual a: ", raiz[c], "\n")
			senao
			escreva("O ", c+1, "º valor armazenado é igual a: ", raiz[c], "\n")
		}
	}

	funcao Ex9()
	{
		// Exercício 9

		inteiro fib[50], cont
		escreva("Algoritmo 9: Impressão da Sequência de Fibonacci \n")
		escreva("\n")
		escreva("Sequência de Fibonacci: \n")
		fib[0] = 1
		fib[1] = 1
		cont = 0
		para(inteiro c = 2; c < 50; c++)
		{
			fib[c] = fib[c-2] + fib[c-1]
		}
		para(inteiro c = 0; c < 50; c++)
		{
			cont = cont + 1
			se(c==49)
			escreva(fib[c])
			senao
			escreva(fib[c], ", ")
			se(cont==10)
			{
				cont = 0
				escreva("\n")
			}
		}
	}
}
