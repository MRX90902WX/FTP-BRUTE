from socket import gethostbyname
from os import system
import socket
import sys

system("chmod 777 continue")
system("clear")
system("setterm -foreground yellow")
system("figlet FTP-BRUTE")
print("")
print("\033[1;34m=========================================")
print(" \033[1;37mDebe ingresar el dominio de una pagina")
print("\033[1;34m=========================================")
system("sleep 1")
print("")
target = input("\033[1;32m[+]Ingrese un dominio o una IP >> \033[1;37m")
targetIP = gethostbyname(target)
print("")
print(f"\033[1;31mIP ===> \033[1;37m{targetIP}")
print("")
ip_addr = (targetIP)
portList = [21]

for port in portList:
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(5)
        status = sock.connect_ex((ip_addr, port))
        if status == 0:
            print(f"\033[1;31mPuerto ===> \033[1;37m{port} FTP - Abierto")
        else:
            print(f"\033[1;31mPuerto ===> \033[1;37m{port} FTP - Cerrado")
        sock.close()
    except socket.error as err:
        print(f"Connection error: {err}")
        sys.exit()
system("bash continue")
