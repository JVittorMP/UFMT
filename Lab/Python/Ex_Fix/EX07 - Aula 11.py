import numpy as np
import math

# Crie uma função que receba 3 valores e calcule as raízes da fórmula de Bháskara

def Calcula_Raiz(a, b, c):
    raizes = []
    Delt = b*b - (4*a*c)
    if Delt == 0:
        x = -b/2*a
        raizes.append(x)
    elif Delt > 0:
        x = (-b + math.sqrt(Delt))/2*a
        raizes.append(x)
        x = (-b - math.sqrt(Delt))/2*a
        raizes.append(x)
    return raizes

# Principal
print("Insira os coeficientes da equação de 2º Grau (ax² + bx + c): ")
a = int(input("Coeficiente geométrico (a): "))
b = int(input("Coeficiente linear (b): "))
c = int(input("Coeficiente independente (c): "))
Result = Calcula_Raiz(a, b, c)
if len(Result) == 0:
    print("Não há raízes reais!")
elif len(Result) == 1:
    print(f"Há apenas 1 raiz real igual a {Result[0]:.2}")
elif len(Result) == 2:
    print(f"Há duas raízes reais iguais a {Result[0]:.2} e {Result[1]:.2}")
