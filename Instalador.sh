#!/bin/bash

# Creado por EDGAR LUCK
# 
# Moviendo 'Instalador-Metasploit.sh'
# Colores

verde='\033[32m'

clear
sleep 1.5
echo "
  Inciando ....
  "
sleep 2
cp Instalador-Metasploit.sh $HOME
cd
ls
sleep 2
echo " Iniciando"
sleep 2
clear
sleep 1.2
bash Instalador-Metasploit.sh
rm Instalador-Metasploit.sh
echo -e ${verde}"
                Presione ' cd '
                Y enter.
"
sleep 0.1
echo -e ${verde}" 
                Y ejecute Metasploit con el siguiente
		comando : msfconsole
"
sleep 3

