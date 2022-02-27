#!/bin/bash
###############################################
## Creado por @edgarluck                     ##
## GITHUB => https://github.com/edgarluck/   ##
###############################################
##
## Creado 13/11/2021
##
## Actualizado 27/02/2022
##
################
## Colores    ##
################
R='\e[1;31m'
W='\e[1;37m'
G='\e[1;32m'
Gris='\e[90m'
Y='\e[1;33m'
M='\e[1;35m'

echo -e ${G}"[${W} Instalador de Metasploit-Framework${G}]"
sleep 3
echo
echo
echo -e ${G}"[+]${Y} Iniciando Proceso..."
sleep 0.8
echo -e "${G}[+]${Y} Iniciando.."
sleep 0.8
echo -e "${G}[+]${Y} Iniciando."
sleep 0.8
echo -e ${G}"[${W} Primero actualizaremos el repositorio ${G}]"
echo -e ${G}"[+]${Y} Actualizando.... "${G}
sleep 2.5 
apt update -y
echo -e ${G}"[+]${Y} Actualizando...."${G}
sleep 2.5
apt upgrade -y
echo -e ${M}"   ++++++++++++++++++++++++++++++++++"
echo -e ${M}"   ++++++++++++++++++++++++++++++++"
echo -e ${G}" [✓]Repositorios Actualizados..."
echo -e ${M}"   ++++++++++++++++++++++++++++++++"
echo -e ${M}"   ++++++++++++++++++++++++++++++++++"
sleep 2.5
echo -e ${G}"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
sleep 1.5
echo -e ${G}"[+]${W} Descargando wget"
sleep 0.5
echo -e ${G}"[+]${W} Descargando...."
sleep 0.5
pkg install wget -y
sleep 0.5
if [ -f "$PREFIX/bin/wget" ]; then
echo -e ${magenta}"   +++++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++" 
echo -e ${verde}" [✓]wget se descargo correctamente"  
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   +++++++++++++++++++++++++++++++++++"
sleep 2
echo -e ${verde}"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
sleep 1.5
else
echo -e "$R[$Y!!$R] ERROR NO SE DESCARGO CORRECTAMENTE, INTENTALO MANUALMENTE"
echo -e "${R}run :${W} pkg install wget";sleep 1;exit 1;
fi
echo
echo -e $G"[+]${W} Descargando postgresql"
sleep 0.5
echo -e "$G[+]${W} Descargando..."
sleep 0.5
pkg install postgresql -y
echo
if [ -d "$PREFIX/include/postgresql" ]; then
echo
echo -e "$G[+]$W postgresql Instalado"
else
echo -e "$R[$Y!!$R] ERROR NO SE DESCARGO CORRECTAMENTE, INTENTALO MANUALMENTE"
echo -e "${R}run :${W} pkg install postgresql";sleep 1;exit 1;
fi
sleep 2
echo -e ${G}"[+]${W} Iniciando ..."
sleep 1.8
if [ -d "metasploit-framework" ]
rm -rf metasploit-framework
fi
if [ -f "metasploit.sh" ]; then
rm metasploit.sh
fi
wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
sleep 1.5
if [ -f "metasploit.sh" ]; then
echo -e "$G[+]${W} Archivo descargado"
sleep 0.9
echo -e "$G[+]"
sleep 0.5
echo -e "${G}[+]$W Otorgando permisos"
chmod +x metasploit.sh
echo -e "$G[+]$W Tener Paciencia para su instalacion"
sleep 0.5
echo -e "$G[+]$W Porque demora cierto tiempo aprox. : 20 minutos"
sleep 5
source metasploit.sh
sleep 1
echo -e "$G[+]$W Hecho"
sleep 2
source postgresql_ctl.sh start
pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile start
echo -e "${G}[+]"
sleep 0.5
echo -e ${G}"[+] Instalacion Terminada"
sleep 3
else
echo -e "$R[$Y!!$R] Error Intenta ejecutar denuevo :("
sleep 0.5
exit 1
fi
