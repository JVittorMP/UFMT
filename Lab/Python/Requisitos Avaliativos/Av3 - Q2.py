'''
Nome: João Vittor de Moura Padilha
Questão 2
Prova: A
'''

Lis = []
dig = input("Insira o número do cartão: ")
for i in dig:
    Lis.append(int(i))
Soma = 0
for i in range(15):
    if (i % 2) == 1:
        Soma += Lis[i]
    elif (i % 2) == 0:
        x = (Lis[i])*2
        if x > 9:
            x = x - 9
        Soma += x
print(Soma)
if (Soma%10) == 0:
    DigV = 0
else:
    DigV = 10 - (Soma % 10)
if Lis[15] == DigV:
    print("Cartão Válido!")
else:
    print("Cartão Inválido!")
    print(f"Dígito correto: {DigV}")