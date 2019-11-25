#DEPRECADO. Ahora el programa esta en https://github.com/francosorbello/git-notifier

# Git notifier
Script que crea notificaciones de Windows cuando uno de los repos se actualiza.
## Instrucciones de uso

Al correr el script por primera vez se creará una carpeta en *$home/git-notifier*. Entre a esa carpeta y clone los repositorios que quiera.
Para ejecutarlo constantemente es necesario que cree una Task de Windows. Para ello:

1. Abra el Task Scheduler
2. Seleccione "Create Basic Task"
3. En la pestaña Trigger, seleccione "When I log on"
4. En Action seleccione "Start a program"
5. Escriba "Powershell.exe" y en "Add arguments" ingrese la dirección del directorio donde tiene guardado el script
6. Una vez creado, haga doble click en la Task y vaya a la pestaña "Triggers".
7. Clickee "Edit". Luego en las opciones avanzadas Active "Repeat task every: 30 minutes | for a duration of: Indefinitely"

## TODO
- Automatizar el proceso de crear una task.
