import time        
import click
import os
  
def f(word):
    for x in word:
        if x != " ":
            click.echo('{}{}'.format("", x),nl=False)
        else:
            click.echo('{}'.format(" "),nl=False)            
        time.sleep(0.05)

inittext="Bienvenido, Rulo."       
f(inittext)
print("")
time.sleep(0.05)
#os.system("cat ~/logo.txt")
#os.system("neofetch")
os.system("cat logo")
print("")
f("Presione cualquier tecla para continuar...")
print("")
os.system('read -s -n 1 -p ""')  