import random

def WriteFile(txt):
    f = open("unidades.sv","w")
    f.write(txt)
    f.close()

def ClearSave():
    WriteFile("")

def SaveUnidad(unidad):
    WriteFile(str(unidad))

ClearSave()
flo = 1 
cei = int(input("Ingresa nro de unidades: "))
print("")
unidades = list(range(flo,cei+1))
tempUds = unidades.copy()
random.shuffle(tempUds)
while True:
    if(len(tempUds) == 0):
        ClearSave()
        print("")
        cont = input("Enter para continuar | 1 para detener: ")
        if cont == "1":
            break
        else:
            tempUds = unidades.copy()
            random.shuffle(tempUds)
    
    unidad = tempUds.pop()
    SaveUnidad(unidad)
    print("Unidad "+str(unidad))
    input("")
    
    
