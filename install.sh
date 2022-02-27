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
#verde='\033[32m'
R='\e[1;31m'
W='\e[1;37m'
G='\e[1;32m'
Gris='\e[90m'
function depen {
printf "\e[1;92m"
command -v php > /dev/null 2>&1 || { echo -e >&2 "Requiero php. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v curl > /dev/null 2>&1 || { echo -e >&2 "Requiero curl. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo -e >&2 "Requiero openssh. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v wget > /dev/null 2>&1 || { echo -e >&2 "Requiero wget. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v git > /dev/null 2>&1 || { echo -e >&2 "Requiero git. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
if [ -d "$PREFIX/include/postgresql" ]; then
echo
else
  echo -e "Requiero postgresql. Por favor instalalo. Abortando...";sleep 2;exit 1;
fi
}
function run-msf {
clear
sleep 1.5
echo -e "${G}[+]$W INICIANDO ...."
sleep 2
cp msf-meta.sh ~
cd ~
echo -e "${G}[+]${W} VERIFICANDO EL INSTALADOR"
sleep 0.5
if [[ -f "msf-meta.sh" ]]; then
echo -e "$G[+]$W Listo"|pv -qL 15
sleep 0.5
else
echo -e "${R}ERROR NO ESTA EL ARCHIVO, EJECUTE DE NUEVO";sleep2;exit1;
fi
clear
sleep 2
echo
echo
echo -e "$G[+]$W Iniciando La Instalacion de , Metasploit"
echo
sleep 1.2
source msf-meta.sh
sleep 2
if [ -f "msf-meta.sh" ]; then
rm msf-meta.sh
fi
echo
echo
echo -e ${G}"[+]${W} Ejecute${Gris} cd ${W}y${Gris} enter"
echo -e ${G}"[+]${W} Para iniciar Metasploit :${Gris} msfconsole"
echo -e "$G[+]"
echo -e "$G[+]${W} Grupo de Telegram ==> https://Linux_Informatic"
echo
exit
}
depen
run-msf
