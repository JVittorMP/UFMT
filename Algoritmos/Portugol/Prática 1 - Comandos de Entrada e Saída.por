programa
{
	
	funcao inicio()
	{

	inteiro N1, N2, S1
	escreva("Algoritmo de Adição")
	escreva("\nInsira 2 números: ")
	escreva("\nNúmero 1: ")
	leia(N1)
	escreva("Número 2: ")
	leia(N2)
	S1=N1+N2
	escreva("Soma = ", S1)
	escreva("\n")

	escreva("\nAlgoritmo de Subtração")
	escreva("\nInsira 2 números: ")
	escreva("\nNúmero 1: ")
	leia(N1)
	escreva("Número 2: ")
	leia(N2)
	S1=N1-N2
	escreva("Subtração = ", S1)
	escreva("\n")

	escreva("\nAlgoritmo de Multiplicação")
	escreva("\nInsira 2 números: ")
	escreva("\nNúmero 1: ")
	leia(N1)
	escreva("Número 2: ")
	leia(N2)
	S1=N1*N2
	escreva("Multiplicação = ", S1)
	escreva("\n")

	escreva("\nAlgoritmo de Divisão")
	escreva("\nInsira 2 números: ")
	escreva("\nNúmero 1: ")
	leia(N1)
	escreva("Número 2: ")
	leia(N2)
	S1=N1/N2
	escreva("Divisão = ", S1)
	escreva("\n")

	real Dis, Com, Med
	escreva("\nInforme a distância percorrida(km): ")
	leia(Dis)
	escreva("Informe a quantidade de combustível consumido(l): ")
	leia(Com)
	Med=Dis/Com
	escreva("Consumo médio de combustível: ", Med, " km/l de combustível")
	escreva("\n")
	
	inteiro S2, M2, N3= 12, N4= 5
	escreva("\nAlgoritmos Condicionais - Adição e Multiplicação de 2 valores pré-definidos")
	escreva("\nInsira a soma entre ", N3, " e ", N4, ": ")
	leia(S2)
	se(S2==17)
	{
		escreva("Parabéns, a resposta está correta!")
	}
	senao
	{
		escreva("Sinto muito, a resposta correta é = ", S2=N3+N4)
	}
	escreva("\n")
	
	escreva("\nInsira o produto entre ", N3, " e ", N4, ": ")
	leia(M2)
	
	se(M2==60)
	{
		escreva("Parabéns, a resposta está correta!")
	}
	senao
	{
		escreva("Sinto muito, a resposta correta é = ", M2= N3*N4)
	}
	
	}
}
