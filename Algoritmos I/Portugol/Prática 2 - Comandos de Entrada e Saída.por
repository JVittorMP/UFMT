programa
{ inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro N1,N2,N3,N4
		real M
		escreva("Algoritmo de média aritmética \n")
		escreva("Digite 4 números inteiros: \n")
		leia(N1)
		leia(N2)
		leia(N3)
		leia(N4)
		escreva("Média: ", M=(N1+N2+N3+N4)/4)
		escreva("\n")

		cadeia N
		escreva("\n")
		escreva("Algoritmo para escrever nome \n")
		escreva("Digite seu nome: \n")
		leia(N)
		escreva("Olá, ", N, "!")
		escreva("\n")

		real A,B,AUX
		escreva("\n")
		escreva("Algoritmo de troca \n")
		escreva("Insira A: \n")
		leia(A)
		escreva("Insira B: \n")
		leia(B)
		AUX=A
		A=B
		B=AUX
		escreva("Valor A: ", A)
		escreva("\nValor B: ", B)
		escreva("\n")

		inteiro Ve,Ar,Fa
		escreva("\n")
		escreva("Algoritmo - Vértices de um cubo \n")
		Ar=12
		Fa=6
		escreva("Um cubo possui 12 arestas e 6 faces. Então, com base na equação V+F=A+2, um cubo possui: ", Ve=Ar+2-Fa , " arestas")
		escreva("\n")
		
		real Coefa, Coefb, Coefc, Delta, X1, X2
		escreva("\n")
		escreva("Solucionando uma equação de 2º grau: \n")
		escreva("Insira o coeficiente A da equação: ")
		leia(Coefa)
		escreva("Insira o coeficiente B da equação: ")
		leia(Coefb)
		escreva("Insira o coeficiente C da equação: ")
		leia(Coefc)
		Delta= Coefb*Coefb-4*Coefa*Coefc
		escreva("\n")
		escreva("O discriminante é igual a: ", Delta, "\n")

		se(Delta<0)
		{
			escreva("\n")
			escreva("Não há raízes reais para essa equação")
			escreva("\n")
		}
		se(Delta==0)
		{
			escreva("\n")
			escreva("Há duas raízes reais iguais para essa equação\n")
			escreva("As raízes são iguais a: \n","X1= ", X1=(-Coefb + mat.raiz(Delta,2))/2*Coefa, "\nX2= ", X2=X1)
			escreva("\n")
		}
		se(Delta>1)
		{
			escreva("\n")
			escreva("Há duas raízes reais diferentes para essa equação\n")
			escreva("As raízes são iguais a: \n", "X1= ", X1=(-Coefb + mat.raiz(Delta,2))/2*Coefa, "\nX2= ", X1=(-Coefb - mat.raiz(Delta,2))/2*Coefa)
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 44; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */