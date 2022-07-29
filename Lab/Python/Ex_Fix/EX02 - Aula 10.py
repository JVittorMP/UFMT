total = 0
cont = 0
lista = []
for i in range(6):
    nota = float(input("Nota: "))
    total = total + nota
    lista.append(nota)
    if(i == 5):
        media = total/5
        for i in range(6):
            if(lista[i] > media):
                cont = cont + 1
        print(f"Há {cont} alunos acima da média da turma")
        print(f"A média da turma é {media}")