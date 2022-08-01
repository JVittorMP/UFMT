programa
{
	
	funcao inicio()
	{
		// Exercício 1
		inteiro N, Centena, Dezena, Unidade
		escreva("\n")
		escreva("Algoritmo 1: Cálculo do Consumo de Energia \n")
		escreva("Insira o consumo energético mensal da sua residência (kWh): ")
		leia(N)
		Centena=N/100
		Dezena=(N%100)/10
		Unidade=(N%100)%10

		se(N<=50)
          	escreva("O valor da sua conta de energia elétrica é de: R$ ", N*1)
		se(N>50 e N<100)
          	escreva("O valor da sua conta de energia elétrica é de: R$ ", 50 + ((Dezena-5)*10 + Unidade)*1.3)
		se(N>100 e N<150)
          	escreva("O valor da sua conta de energia elétrica é de: R$ ", 115 + ((Dezena*10 + Unidade)*1.6 ))
		se(N>150)
          	escreva("O valor da sua conta de energia elétrica é de: R$ ", 195 + ((Centena-1)*100 + (Dezena-5)*10 + Unidade)*2)
		escreva("\n")

		// Exercício 2
		inteiro Idade, Olhos
		real Altura, Peso, Cintura, Busto, Quadril
		cadeia Cabelo
		logico Aprovado
		
		escreva("\n")
		escreva("Algoritmo 2: Seleção de Candidatos \n")
		escreva("Insira suas informações pessoais abaixo: \n")
		escreva("Idade: ")
		leia(Idade)
		escreva("Cor dos cabelos: ")
		leia(Cabelo)
		escreva("Altura (m): ")
		leia(Altura)
		escreva("Peso (Kg): ")
		leia(Peso)
		escreva("Tamanho do Busto (cm): ")
		leia(Busto)
		escreva("Largura da Cintura (cm): ")
		leia(Cintura)
		escreva("Largura do Quadril (cm): ")
		leia(Quadril)
		escreva("Escolha uma opção de cor dos olhos: \n")
		escreva("1: Castanho \t 2: Preto \t 3: Azul \n", "4: Verde \t 5: Âmbar \t 6: Outro \n")
		escreva("Opção: ")
		leia(Olhos)
		
		se(Idade <= 18)
			Aprovado = falso
		senao se(Cabelo != "preto")
			Aprovado = falso
		senao se(Altura <= 1.75)
			Aprovado = falso
		senao se(Peso<=50 ou Peso>=55)
			Aprovado = falso
		senao se(Busto<=85 ou Busto>=88)
			Aprovado = falso
		senao se(Cintura<=60 ou Cintura>=62)
			Aprovado = falso
		senao se(Quadril<=90 ou Quadril>=92)
			Aprovado = falso
		senao se(Olhos!=1 e Olhos!=2)
			Aprovado = falso
		senao
			Aprovado = verdadeiro

		se(Aprovado)
			escreva("Candidato Aprovado")
		senao
			escreva("Candidado Reprovado")
		escreva("\n")

		// Exercício 3
		escreva("\n")
		inteiro Dependentes
		real SalFuncionario, SalMinimo, ImpBruto, ImpLiq, ImpPago
		SalMinimo = 1100.0
		escreva("Algoritmo 3: Imposto de Renda \n")
		escreva("Insira o valor correspondente ao seu salário: ")
		leia(SalFuncionario)
		escreva("Insira o número de dependentes da sua residência: ")
		leia(Dependentes)
		escreva("Insira o valor do imposto padrão já pago por você: ")
		leia(ImpPago)
		ImpBruto = 0.0
		
		se(SalFuncionario > 12*SalMinimo)
			ImpBruto = 0.2*SalFuncionario
		se(SalFuncionario > 5*SalMinimo e SalFuncionario <= 12*SalMinimo)
			ImpBruto = 0.08*SalFuncionario
		se(SalFuncionario <= 5*SalMinimo)
			escreva("Você é isento de pagar o imposto de renda")
		
		se(ImpBruto != 0)
		{
			ImpBruto = ImpBruto*1.04
			ImpLiq = ImpBruto - 300*Dependentes
		
			se(ImpPago - ImpLiq > 0)
				escreva("Imposto a pagar: ", ImpPago - ImpLiq)
			se(ImpPago - ImpLiq < 0)
				escreva("Imposto a receber: ", ImpLiq - ImpPago)
		}
		escreva("\n")

		// Exercício 4
		escreva("\n")
		escreva("Algoritmo 4: Quantidade de Medicamento \n")
		escreva("Insira seu peso e idade abaixo:  \n")
		escreva("Peso (Kg)")
		leia(Peso)
		escreva("Idade")
		leia(Idade)
		se (Idade<12)
		{
			se (Peso>=9.1 e Peso<=16.0)
			escreva("O paciente deve tomar 10 gotas do medicamento")
			se (Peso>=16.1 e Peso<=24.0)
			escreva("O paciente deve tomar 15 gotas do medicamento")
			se (Peso>24.0)
			escreva("O paciente deve tomar 30 gotas do medicamento")
		}
		se (Idade>12)
		{
			se (Peso<60.0)
			escreva("O paciente deve tomar 35 gotas do medicamento")
			se (Peso>60.0)
			escreva("O paciente deve tomar 40 gotas do medicamento")
		}
		escreva("\n")

		// Exercício 5
		inteiro N1, N2, N3
		escreva("\n")
		escreva("Algoritmo 5: Algoritmo de Ordem Crescente \n")
		escreva("Insira 3 números: \n")
		leia(N1)
		leia(N2)
		leia(N3)
		se(N1>N2 e N2>N3)
			escreva("A ordem crescente dos números inseridos é: ", N1, " ", N2, " ", N3)
		se(N1>N3 e N3>N2)
			escreva("A ordem crescente dos números inseridos é: ", N1, " ", N3, " ", N2)
		se(N2>N1 e N1>N3)
			escreva("A ordem crescente dos números inseridos é: ", N2, " ", N1, " ", N3)
		se(N2>N3 e N3>N1)
			escreva("A ordem crescente dos números inseridos é: ", N2, " ", N3, " ", N1)
		se(N3>N1 e N1>N2)
			escreva("A ordem crescente dos números inseridos é: ", N3, " ", N1, " ", N2)
		se(N3>N2 e N2>N1)
			escreva("A ordem crescente dos números inseridos é: ", N3, " ", N2, " ", N1)
		escreva("\n")
		
		// Exercício 6
		cadeia NomePais, Nome1, Nome2, Nome3
		inteiro Con, Ouro, Prata, Bronze, P1, P2, P3
		P1 = 0
		P2 = 0
		P3 = 0
		Con = 1
		Nome1 = "o" 
		Nome2 = "o"
		Nome3 = "o"
		escreva("Algoritmo 6: Classificação Geral das Olimpíadas \n")
		escreva("Preencha as informações abaixo: \n")
		enquanto (Con <= 3)
		{
			escreva("Nome do país: ")
			leia(NomePais)
			escreva("Quantidade de medalhas de ouro: ")
			leia (Ouro)
			escreva("Quantidade de medalhas de prata: ")
			leia (Prata)
			escreva("Quantidade de medalhas de Bronze: ")
			leia (Bronze)
			
			se (Con == 1)
			{
				P1 = Ouro*3 + Prata*2 + Bronze
				Nome1 = NomePais
			}
			se (Con == 2)
			{
				P2 = Ouro*3 + Prata*2 + Bronze
				Nome2 = NomePais
			}
			se (Con == 3)
			{
				P3 = Ouro*3 + Prata*2 + Bronze
				Nome3 = NomePais
			}
			
			Con = Con + 1
			escreva("\n")
		}
		
		se(P1 > P2 e P2 > P3)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome1, "\t", P1, "\n 2.", Nome2, "\t", P2, "\n 3.", Nome3, "\t", P3)
		se(P1 > P3 e P3 > P2)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome1, "\t", P1, "\n 2.", Nome3, "\t", P3, "\n 3.", Nome2, "\t", P2)
		se(P2 > P1 e P1 > P3)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome2, "\t", P2, "\n 2.", Nome1, "\t", P1, "\n 3.", Nome3, "\t", P3)
		se(P2 > P3 e P3 > P1)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome2, "\t", P2, "\n 2.", Nome3, "\t", P3, "\n 3.", Nome1, "\t", P1)
		se(P3 > P1 e P1 > P2)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome3, "\t", P3, "\n 2.", Nome1, "\t", P1, "\n 3.", Nome2, "\t", P2)
		se(P3 > P2 e P2 > P1)
			escreva ("Tabela de Classificação: ", "\n 1.", Nome3, "\t", P3, "\n 2.", Nome2, "\t", P2, "\n 3.", Nome1, "\t", P1)
		escreva("\n")
		
		// Exercício 7
		escreva("\n")
		inteiro N4
		escreva("Algoritmo 7: Seleção dos Múltiplos de 3 e 4 \n")
		escreva("Insira 4 números inteiros: \n")
		leia(N1)
		leia(N2)
		leia(N3)
		leia(N4)
		escreva("Dentre os inseridos, os seguintes números são múltiplos de 3 ou 4: \n")
		se(N1%3==0 e N1%4==0)
			escreva(N1, " ")
		se(N2%3==0 e N2%4==0)
			escreva(N2, " ")
		se(N3%3==0 e N3%4==0)
			escreva(N3, " ")
		se(N4%3==0 e N4%4==0)
			escreva(N4, " ")
		escreva("\n")

		// Exercícia 8
		escreva("\n")
		inteiro Nasc, Ano
		escreva("Algoritmo 8: Idade Elegível para Votação e CNH \n")
		escreva("Insira o ano atual: ")
		leia(Ano)
		escreva("Insira seu ano de nascimento: ")
		leia(Nasc)
		Idade = Ano - Nasc
		se(Idade >= 16)
			escreva("Você possui elegibilidade quanto ao direito de votar \n")
		senao
			escreva("Você não possui elegibilidade quanto ao direito de votar \n")
			
		se(Idade >= 18)
			escreva("Você possui elegibilidade quanto ao processo de obtênção da Carteira Nacional de Habilitação \n")
		senao
			escreva("Você não possui elegibilidade quanto ao processo de obtênção da Carteira Nacional de Habilitação")
		escreva("\n")

		// Exercício 9
		escreva("\n")
		inteiro A, B
		escreva("Algoritmo 9: Algoritmo de Troca Sem Variável Auxiliar \n")
		escreva("Insira dois números inteiros: \n")
		leia(A)
		leia(B)
		A = A*B
		B = A/B
		A = A/B
		escreva("A inversão entre os valores dos algarismos inseridos é igual a: ", A, " e ", B)
		escreva("\n")

		// Exercício 10
		escreva("\n")
		escreva("Algoritmo 5: Algoritmo de Ordem Crescente \n")
		escreva("Insira 3 números: \n")
		leia(N1)
		leia(N2)
		leia(N3)
		se(N1<N2 e N2<N3)
			escreva("A ordem decrescente dos números inseridos é: ", N3, " ", N2, " ", N1)
		se(N1<N3 e N3<N2)
			escreva("A ordem decrescente dos números inseridos é: ", N2, " ", N3, " ", N1)
		se(N2<N1 e N1<N3)
			escreva("A ordem decrescente dos números inseridos é: ", N3, " ", N1, " ", N2)
		se(N2<N3 e N3<N1)
			escreva("A ordem decrescente dos números inseridos é: ", N1, " ", N3, " ", N2)
		se(N3<N1 e N1<N2)
			escreva("A ordem decrescente dos números inseridos é: ", N2, " ", N1, " ", N3)
		se(N3<N2 e N2<N1)
			escreva("A ordem decrescente dos números inseridos é: ", N1, " ", N2, " ", N3)
		escreva("\n")
	}
}
