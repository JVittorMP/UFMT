Alunos = [ [ None for i in range (4) ] for j in range (2) ]
AltF = NotasF = NotasM = Nasc = []
Cont1 = Cont2 = 0
AltMaior = 0
AltMenor = 5
print("Insira as informações dos alunos: \n")
for i in range (0,2):
        Alunos[i][0] = float(input("Altura: "))
        Alunos[i][1] = int(input("Nota: "))
        Alunos[i][2] = int(input("Ano de nascimento: "))
        Alunos[i][3] = input("Sexo (M/F): ")
        if Alunos[i][0] < AltMenor: # Identifica Menor Altura
                AltMenor = AltMenor
        if Alunos[i][0] > AltMaior: # Identifica Maior Altura
                AltMaior = AltMaior
        if Alunos[i][3] == 'M': # Separa Informações Sobre Alunos do Sexo Masculino
                NotasM.append(Alunos[i][1])
        elif Alunos[i][3] == 'F': # Separa Informações Sobre Alunos do Sexo Feminino
                AltF.append(Alunos[i][0])
                NotasF.append(Alunos[i][1])
        Nasc.append(Alunos[i][2])
        print()
print(f"{Alunos[i][3]}, {NotasM}, {AltF}, {NotasF}")
Unicos = {}
for i in Nasc: # Identifica Entradas Únicas
        if i not in Unicos:
                Unicos.update({i: 1})
        else:
                x = Unicos.get(i)
                x = x + 1
                Unicos.update({i: x})
Media_AltF = sum(AltF)/len(AltF)
Media_NotF = sum(NotasF)/len(NotasF)
for i in AltF:
        if i > Media_AltF:
                Cont1 += 1
for i in NotasM:
        if i < Media_NotF:
                Cont2 += 1

print(f"A maior altura entre os alunos é: {AltMaior} m")
print(f"A menor altura entre os alunos é: {AltMenor} m")
print(f"Há {Cont1} mulheres acima da altura média feminina")
print(f"Há {Cont2} homens com nota inferior à média das mulheres \n")

print("Porcentagem de alunos em cada ano inserido: ")
for i in Unicos:
        print(f"{i}: {Unicos.get(i)*5}%")