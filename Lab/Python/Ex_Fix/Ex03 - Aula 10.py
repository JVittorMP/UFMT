'''
Fazer um algoritmo para ler uma lista de números positivos e escrevê-los na
ordem inversa da entrada. A entrada de um número negativo é utilizada como
flag, que marca o fim da entrada dos números válidos. A quantidade máxima de
números válidos a serem digitados é 500.
'''

lista = []
while(1):
    x = int(input("Insira um Valor Inteiro: "))
    if(x < 1) or (len(lista) > 500):
        break
    lista.append(x)
print(f"Lista = {lista}")
print(f"Tamanho da Lista = {len(lista)}")
