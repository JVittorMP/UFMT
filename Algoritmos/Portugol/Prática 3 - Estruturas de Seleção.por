programa
{
	
	funcao inicio()
	{
		caracter S
		real A, P // A = Altura & P = Peso
		escreva("Algoritmo de Peso \n")
		escreva("Insira seu sexo (F/M): \n")
		leia(S)
		escreva("Insira sua altura (m): \n")
		leia(A)
		se(S=='f' ou S=='F')
		{
			escreva("Seu peso ideal é de: ", P=(62.1 * A)-44.7, " Kg.")
		}
		se(S=='m' ou S=='M')
		{
			escreva("Seu peso ideal é de: ", P=(72.7 * A)-58, " Kg.")
		}
		escreva("\n")

		real N1, N2, N3
		escreva("\n")
		escreva("Algoritmo de Igualdade\n")
		escreva("Digite 3 números: \n")
		leia(N1)
		leia(N2)
		leia(N3)
		se(N1==N2 e N2==N3)
		{
			escreva("Todos os números informados são iguais")
		}
		senao
		{
			se(N1==N2 ou N1==N3 ou N2==N3)
			{
				escreva("Há dois números iguais entre os informados")
			}
			senao
			{
				escreva("Não há números iguais entre os inseridos")
			}
		}
		escreva("\n")

		// As variáveis P (peso) e A (Altura) foram declaradas anteriormente
		real IMC
		escreva("\n")
		escreva("Algoritmo de Cálculo do IMC\n")
		escreva("Insira seu peso (Kg): \n")
		leia(P)
		escreva("Insira sua altura (m): \n")
		leia(A)
		IMC = P/(A*A)
		se(IMC<18.5)
		{
			escreva("Sua condição corporal está abaixo do ideal")
		}
		se(18.5<IMC e IMC<=25.0)
		{
			escreva("Sua condição corporal está dentro da faixa ideal")
		}
		se(25.0<IMC e IMC<=30.0)
		{
			escreva("Sua condição corporal está acima do ideal")
		}
		se(IMC>30.0)
		{
			escreva("Sua condição corporal se encaixa no padrão de obesidade")
		}
		escreva("\n")
		
		inteiro NumA, NumB
		real RA, RB
		escreva("\n")
		escreva("Algoritmo de 2 Números (Par/Impar) \n")
		escreva("Insira 2 números: \n")
		leia(NumA, NumB)
		//área de Variáveis
		RA = NumA
		RB = NumB
		//área de Variáveis
		se((NumA%2)==1)
		{
			escreva("O primeiro número inserido é ímpar e o produto entre eles é igual a: ", RA*RB)
		}
		senao
		{
			escreva("O primeiro número inserido é par e a razão entre eles é igual a: ", RA/RB)
		}
		escreva("\n")


		real Gas, Eta, Gx, Ex
		escreva("\n")
		escreva("Algortimo de Cálculo do Preço-Benefício do Combustível \n")
		escreva("Insira o preço do litro da gasolina: \n")
		leia(Gas)
		escreva("Insira o preço do litro do etanol: \n")
		leia(Eta)
		se(Eta>(2.0/3.0)*Gas)
		{
			escreva("Abasteça com gasolina")
		}
		se(Eta<(2.0/3.0)*Gas)
		{
			escreva("Abasteça com etanol")
		}
		escreva("\n")

		inteiro D1, D2, D3
		escreva("\n")
		escreva("Algoritmo de Remoção do Menor Número \n")
		escreva("Insira um número de 3 dígitos: \n")
		leia(NumA)
		//Área de relação entre as variáveis
		D1=NumA/100
		D2=(NumA%100)/10
		D3=(NumA%100)%10
		//Área de relação entre as variáveis
		se(NumA>99 e NumA<1000)
		{
			se(D1!=D2 e D2!=D3)
			{
				se(D1<D2 e D1<D3)
				{
					escreva("Seu novo número é: ", D2,D3)
				}
				senao
				{
					se(D2<D1 e D2<D3)
					{
						escreva("Seu novo número é: ", D1,D3)
					}
					senao
					{
						se(D3<D1 e D3<D2)
						{	
							escreva("Seu novo número é: ", D1,D2)
						}	
					}
				}
			}
			senao
			{
				escreva("Há dois ou mais dígitos iguais no número inserido!")
			}
		}
		senao
		{
			escreva("A entrada diverge dos padrões exigidos (número de 3 dígitos)")
		}
		escreva("\n")

		escreva("\n")
		escreva("Algoritmo de Seleção do Maior Número \n")
		escreva("Insira três números distintos: \n")
		leia(N1, N2, N3)
		se(N1!=N2 e N2!=N3)
		{
			se(N1>N2 e N1>N3)
			{
				escreva("O maior número dentre os três é: ", N1)
			}
			se(N2>N1 e N2>N3)
			{
				escreva("O maior número dentre os três é: ", N2)
			}
			se(N3>N1 e N3>N2)
			{
				escreva("O maior número dentre os três é: ", N3)
			}
		}
		senao
		{
			escreva("Há dois ou mais numerais iguais dentre os inseridos!")
		}
		escreva("\n")

		inteiro I
		escreva("\n")
		escreva("Algoritmo de Determinação da Classe Eleitoral \n")
		escreva("Digite sua idade: \n")
		leia(I)
		se(I<16)
		{
			escreva("Você se enquadra na classe de 'Não Eleitor'")
		}
		se(I>=18 e I<65)
		{
			escreva("Você se enquadra na classe de 'Eleitor Obrigatório'")
		}
		se((I>=16 e I<18) ou I>65)
		{
			escreva("Você se enquadra na classe de 'Eleitor Facultativo'")
		}
		escreva("\n")
	}
}
