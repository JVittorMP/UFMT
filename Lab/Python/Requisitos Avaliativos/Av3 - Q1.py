'''
Nome: João Vittor de Moura Padilha
Questão 1
Prova: A
'''

def Separar_Tela():
    print("#" * 50)
    print()

def ArtilheiroTorneio(g, x):
    maior = 0
    for j in range(x):
        if g[j]['gols'] >= maior:
            maior = g[j]['gols']
            art = j
    return art
        

def Mais_Violento(c, x):
    maior = 0
    verif = []
    for s in range(x):
        if c[s]['cart'] >= maior:
            maior = c[s]['cart']
    for s in range(x):
        if c[s]['cart'] == maior:
            verif.append(s)
    return verif


cont_pos = {}
Jogadores = []
val = int(input("Insira a quantidade de jogadores analisados: "))
for i in range (val):
    aux = {}
    aux['nome'] = input("Nome: ")
    aux['faltas'] = int(input("Faltas: "))
    aux['gols'] = int(input("Quantidade de gols: "))
    aux['pos'] = input("Posição no campo: ")
    aux['cart'] = int(input("Quantidade de cartões: "))
    if aux['pos'] not in cont_pos.keys(): # Verifica a contagem de posições
        cont_pos[aux['pos']] = 1
    else:
        cont_pos[aux['pos']] = cont_pos[aux['pos']] + 1
    Jogadores.append(aux)

Separar_Tela()
print("Quantidade de jogadores em cada posição: ")
for i in cont_pos:
    print(f"{i}: {cont_pos[i]}")
Separar_Tela()

art = ArtilheiroTorneio(Jogadores, val)
print(f"O artilheiro foi {Jogadores[art]['nome']} com {Jogadores[art]['gols']} gols")
Separar_Tela()
falt = Mais_Violento(Jogadores, val)
print(f"Jogadores mais violentos: ")
for i in falt:
    print(f"{Jogadores[i]['nome']} - {Jogadores[i]['pos']}")
Separar_Tela()