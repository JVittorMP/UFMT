programa
{
	
	funcao inicio()
	{
		inteiro N, D1, D2, D3, D4
		escreva("Algoritmo De Inversão de Termos\n")
		escreva("Digite um número de 4 digitos: \n")
		leia(N)
		se(N>=9999 ou N<=999)
		{
			escreva("A entrada está incorreta!")
		}
		senao
		{
			D1=N/1000
			D2=(N%1000)/100
			D3=((N%1000)%100)/10
			D4=(((N%1000)%100)%10) 
			escreva("O número digitado com os algarismos invertidos é: ", D4, D3, D2, D1)
		}
		escreva("\n")

		real SalM, SalX
		escreva("\n")
		escreva("Cálculo do Ganho Por Unidade de Salário Mínimo\n")
		escreva("Insira o seu salário (R$): \n")
		leia(SalX)
		SalM=1192.40
		escreva("Seu salário é R$ ", SalX/SalM, "x o salário mínimo brasileiro.")
		escreva("\n")

		real PeI, PeR 
		escreva("\n")
		escreva("Algoritmo de Cálculo de Ganho de Peso\n")
		escreva("Insira seu peso atual(g): \n")
		leia(PeI)
		escreva("O seu peso após engordar 12% seria igual a: ", PeR=PeI*1.12, " gramas")
		escreva("\n")

		inteiro V, V1, V2, V3
		escreva("\n")
		escreva("Algoritmo de Soma dos Dígitos de um Número\n")
		escreva("Digite um número menor que 1000: \n")
		leia(V)
		se(V>=1000)
		{
			escreva("A entrada está incorreta!")
		}
		senao
		{
			V1=V/100
			V2=(V%100)/10
			V3=((V%100)%10)
			escreva("A soma dos dígitos do número em questão é igual a: ", V1+V2+V3)
		}
		escreva("\n")

		real C
		escreva("\n")
		escreva("Algoritmo Conversor Celcius(°C) - Fahrenheit(°F)\n")
		escreva("Insira a temperatura(°C): \n")
		leia(C)
		escreva("A temperatura equivalente é igual a ", 9.0/5.0*C+32 ,"°F" )
		escreva("\n")
		
	}
}
