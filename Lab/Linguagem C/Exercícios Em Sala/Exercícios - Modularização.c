#include <stdio.h>
#include <windows.h>

float CalculaTermo();
int Fatorial();

int main(){
	// Exercício de Fixação 2 - Aula 7
	// Fazer um algoritmo que ative a função CalculaTermo que calcule e escreva a
	// soma dos N primeiros termos da série 100/0! + 99/1! + 98/2! + ... , em que
	// N não deve ser maior que 20.

	SetConsoleOutputCP(65001);
	int num;
	float x;
	printf("Insira quantos termos deseja calcular: ");
	scanf(" %d", &num);
	while(num > 20)
	{
		printf("Os termos não devem ser maiores que 20! \n");
		printf("Insira o valor novamente: ");
		scanf(" %d", &num);
	}
	x = CalculaTermo(num);
	printf("A soma dos %d primeiros termos da série é igual a %.2f", num, x);
}

float CalculaTermo(int n){
	float soma = 0, num = 100, Sden = 0;
	int den = 0;
	for(int c = 0; c < n; c++)
	{
		Sden = Fatorial(den);
		soma += num/Sden;
		den += 1;
		num -= 1;
	}
	return(soma);
}

int Fatorial(int k){
	if(k <= 1)
		return 1;
	else
		return(k * Fatorial(k-1));
}