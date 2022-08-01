programa
{
	
	funcao inicio()
	{
		inteiro N, T // N = número inteiro; T = timer
		escreva("Algortimo de Contagem \n")
		escreva("Insira um número inteiro para iniciar o processo de contagem: ")
		leia(N)
		T=0
		enquanto(T<=N)
		{
			escreva(T, " ")
			T=T+1
			se(T!=1 e T%20==1)
			{
				escreva("\n")
			}
		}
		escreva("\n")

		inteiro I, F, S //I = Início; F = Final; S = Salto
		escreva("\n")
		escreva("Algoritmo de Contagem Inteligente \n")
		escreva("Iremos contar de: ")
		leia(I)
		escreva("até: ")
		leia(F)
		escreva("A contagem será saltando quantas unidades por vez? ")
		leia(S)
		se(I<=F)
		{
			enquanto(I<=F)
			{
				escreva(I, " ")
				I=I+S
			}
		}
		senao
		{
			enquanto(I>=F)
			{
				escreva(I, " ")
				I=I-S
			}
		}
		escreva("\n")

		inteiro Num
		real Acm, Inc
		escreva("\n")
		escreva("Algoritmo de Acumulação | Somatória I \n")
		escreva("Digite um número inteiro maior ou igual a 5: ")
		leia(Num)
		Inc=5.0
		Acm=0.0
		se (Num<5)
		{
			escreva("Entrada Inválida")
		}
		senao
		{
			enquanto (Inc<=Num)
			{
				Acm = Acm + 2*Inc*Inc+5*Inc+1
				Inc = Inc + 1
			}
		}
		escreva("A somatória da expressão (2.I²+5.I+1), de I=5 até a entrada inserida é igual a: ", Acm)
		escreva("\n")

		real X, Den, Con
		escreva("\n")
		escreva("Algoritmo de Acumulação | Somatória II \n")
		escreva("Insira um número inteiro qualquer: ")
		leia(Con)
		Den=1.0
		X=0.0
		enquanto (Den<=Con)
		{
			X = X + 1/Den
			Den = Den + 1
		}
		escreva("A somatória da expressão (1 + 1/2 + ... + 1/N) sendo N o valor inserido, é igual a: ", X)
		escreva("\n")

		inteiro Mai, Men
		escreva("\n")
		escreva("Algoritmo de Acumulação | Somatória III \n")
		escreva("Insira 20 números inteiros: \n")
		leia(Num)
		Con=0.0
		Mai=Num
		Men=Num
		enquanto (Con<19)
		{
			leia(Num) //A variável 'Num' já está declarada
			Con = Con + 1
			se (Num > Mai)
				Mai = Num
			se (Num < Men)
				Men = Num
		}
		escreva("O maior número inserido é: ", Mai, "\n","O menor número inserido é: ", Men)
		escreva("\n")

		escreva("\n")
		real Som, A
		inteiro Cont
		escreva("Algoritmo de Cálculo de uma Sequência Numérica X \n")
		Cont=1
		A=500.0
		Som=0.0
		enquanto(Cont<=10)
		{
			se(Cont%2==0)
			{
				Som= Som + 5/A
			}	
			se(Cont%2==1)
			{	
				Som= Som + 2/A
			}
			A=A-50
			Cont=Cont+1
		}
		escreva("A somatória da sequencia numérica S = 2/500 + 5/450 + ... é igual a: ", Som)
		escreva("\n")

		escreva("\n")
		inteiro Inicio, Fim, Soma
		escreva("Algoritmo de Soma dos Números ímpares Num Dado Intervalo \n")
		escreva("Digite um intervalo de números inteiros \n")
		leia(Inicio)
		escreva("Até \n")
		leia(Fim)
		Soma=0
		faca
		{
			se(Inicio%2==1)
			{
				Soma=Soma+Inicio
				Inicio=Inicio+1
			}
			se(Inicio%2==0)
			{
				Inicio=Inicio+1
			}
		}
		enquanto(Inicio<Fim)
		escreva("A soma de todos os números ímpares o intervalo inserido é igual a: ", Soma)
		escreva("\n")

		// Área de Testagem do exercício para as estruturas Enquanto-Faça; Repita-Até; Para-Faça;

		escreva("\n")
		escreva("Algoritmo Exemplo \n")
		escreva("Insira 10 números \n")
		Cont = 0 // Já declarada
		enquanto(Cont<=10)
		{
			escreva("\n")
			leia(N)
			escreva("\n")
			se(N%2==0)
				escreva("O número inserido é par \n")
			se(N%2==1 ou N%2==-1)
				escreva("O número inserido é ímpar \n")
			se(N>0)
				escreva("O número inserido é positivo \n")
			se(N==0)
				escreva("O número inserido é 0 \n")
			se(N<0)
				escreva("O número inserido é negativo \n")
			se(N%400==0 ou (N%4==0 e N%100!=0))
				escreva("O número inserido é equivalente a um ano bissexto \n")
			senao
				escreva("O número inserido não é equivalente a um ano bissexto \n")
			Cont = Cont + 1
		}
		escreva("\n")

		escreva("\n")
		escreva("Algoritmo Exemplo \n")
		escreva("Insira 10 números \n")
		Cont = 0 // Já declarada
		faca
		{
			escreva("\n")
			leia(N)
			escreva("\n")
			se(N%2==0)
				escreva("O número inserido é par \n")
			se(N%2==1 ou N%2==-1)
				escreva("O número inserido é ímpar \n")
			se(N>0)
				escreva("O número inserido é positivo \n")
			se(N==0)
				escreva("O número inserido é 0 \n")
			se(N<0)
				escreva("O número inserido é negativo \n")
			se(N%400==0 ou (N%4==0 e N%100!=0))
				escreva("O número inserido é equivalente a um ano bissexto \n")
			senao
				escreva("O número inserido não é equivalente a um ano bissexto \n")
			Cont = Cont + 1
		}
		enquanto(Cont<10)
		escreva("\n")

		escreva("\n")
		escreva("Algoritmo Exemplo \n")
		escreva("Insira 10 números \n")
		para(Cont=0; Cont<10; Cont++)
		{
			escreva("\n")
			leia(N)
			escreva("\n")
			se(N%2==0)
				escreva("O número inserido é par \n")
			se(N%2==1 ou N%2==-1)
				escreva("O número inserido é ímpar \n")
			se(N>0)
				escreva("O número inserido é positivo \n")
			se(N==0)
				escreva("O número inserido é 0 \n")
			se(N<0)
				escreva("O número inserido é negativo \n")
			se(N%400==0 ou (N%4==0 e N%100!=0))
				escreva("O número inserido é equivalente a um ano bissexto \n")
			senao
				escreva("O número inserido não é equivalente a um ano bissexto \n")
		}
		escreva("\n")

		escreva("\n")
		escreva("Algoritmo de Contabilização de Numerais no Intervalo 100-200 \n")
		escreva("Insira números quaisquer: \n")
		Con=0.0
		faca
		{
			leia(N)
			se(N>=100 e N<=200)
				Con=Con+1
		}
		enquanto(N!=0)
		se(Con==0)
		escreva("Nenhum dos números inseridos está dentro do intervalo 100 < X < 200")
		se(Con==1)
		escreva(Con, " Numeral está inserido no intervalo 100 < X < 200")
		se(Con>1)
		escreva(Con, " Numerais estão inseridos no intervalo 100 < X < 200")
		escreva("\n")
	}
}
