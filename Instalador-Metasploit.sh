#!/bin/bash

verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
blanco='\033[37m'

echo -e ${verde}"
                [Instalador de Metasploit-Framework]
		"
sleep 3
echo -e ${amarillo}"
Iniciando Proceso...
"
sleep 0.8
echo "Iniciando.."
sleep 0.8
echo "Iniciando."
sleep 0.8
echo -e ${verde}" 
                [Primero actualizaremos el repositorio] 
"

echo -e ${amarillo}"   
Actualizando.... 
"${blanco}
sleep 2.5 
apt update -y
echo -e ${amarillo}"
Actualizando....
"${blanco}
sleep 2.5
apt upgrade -y
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++"
echo -e ${verde}" [✓]Repositorios Actualizados..."
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++++"
sleep 2.5
echo -e ${verde}"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
sleep 1.5

echo -e ${verde}"  
                       [Descargando wget]
"
sleep 2
echo -e ${amarillo}"
Descargando....
            "${blanco}  
sleep 2
pkg install wget -y
echo -e ${magenta}"   +++++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++" 
echo -e ${verde}" [✓]wget se descargo correctamente"  
echo -e ${magenta}"   ++++++++++++++++++++++++++++++++"
echo -e ${magenta}"   +++++++++++++++++++++++++++++++++++"
sleep 2.5
echo -e ${verde}"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
sleep 1.5
echo ""
echo -e ${verde}"Iniciando :"${blanco}
sleep 1.8
wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
echo ""
echo -e ${verde}"done."
sleep 1.9
ls
echo ""
sleep 4
echo "Dando permisos"
echo ""
chmod +x * metasploit.sh
echo -e ${verde}"Ejecutando..."
sleep 1.8
echo -e ${verde}"
       Tener Paciencia para su instalacion
       porque demora 20 minutos.
"
sleep 7
./metasploit.sh
sleep 1
echo ""
echo "done"
sleep 3
./postgresql_ctl.sh start
echo ""
pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile start
echo -e ${amarillo}"
        [Instalacion Terminada]
"
sleep 3
