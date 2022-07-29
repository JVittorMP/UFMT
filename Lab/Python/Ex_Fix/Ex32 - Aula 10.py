import numpy as np

# Dada uma matriz A(n x m) imprimir o número de linhas e o número de colunas nulas da matriz

print("Insira o número de linhas e colunas da matriz: ")
linhas = int(input("Linhas: "))
colunas = int(input("Colunas: "))
tot = []
con = 0
for i in range (linhas):
    aux = []
    for j in range (colunas):
        x = int(input(f"Item[{i+1}][{j+1}]: "))
        aux.append(x)
    tot.append(aux)
    if sum(aux) != 0:
        con += 1
print(f"Há {con} linhas nulas na matriz")
