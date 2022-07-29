lista = []
while(1):
    x = int(input("Insira um Valor Inteiro: "))
    if(x < 1) or (len(lista) > 500):
        break
    lista.append(x)
print(f"Lista = {lista}")
print(f"Tamanho da Lista = {len(lista)}")