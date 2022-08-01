#include <stdio.h>
#include <math.h>
#include <windows.h>

int main(){
    // Teste da Biblioteca math.h
    SetConsoleOutputCP(65001); 
    float y, x;
    float x_rad;

    printf("Digite o valor do ângulo x: ");
    scanf(" %f", &x);
    x_rad = (M_PI*x)/180.0;
    y = 2.5*cos(fabsf(x_rad/2));
    printf("O valor de y é igual a: %.2f", y);
}