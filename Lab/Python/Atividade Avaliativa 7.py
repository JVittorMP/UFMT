# Verificação da Validade do CPF

CPF = []
soma = 0
str_CPF = input("insira o CPF: ")

for i in str_CPF: # Transforma a Entrada em uma Lista
    CPF.append(i)

for i in range(9): # Realiza a Soma
    aux = int(CPF[i])*(10-i)
    soma = soma + aux

dig1 = soma%11 # Encontra o 1º Dígito
if(dig1 >= 2):
    dig1 = 11 - dig1
else:
    dig1 = 0

soma = 0
for i in range(10): # Realiza a Nova Soma
    aux = int(CPF[i])*(11-i)
    soma = soma + aux

dig2 = soma%11 # Encontra o 2º Dígito
if(dig2 >= 2):
    dig2 = 11 - dig2
else:
    dig2 = 0

if(int(CPF[9]) == dig1 and int(CPF[10]) == dig2): # Verifica a Validade
    print("CPF Válido!")
else:
    print("CPF Inválido!")
    print(f"Dígitos Verificadores Corretos: {dig1}{dig2}")
