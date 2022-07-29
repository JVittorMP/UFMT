'''
Faça um programa que leia a nota de 6 alunos, calcule a média dessa turma de
alunos e mostre para o usuário a quantidade de alunos que estão acima da média
da turma e a média dessa turma.
'''

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
