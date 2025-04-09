#!/bin/bash  
ROJO='\033[0;31m'
NOCOL='\033[0m'
clear
statservei=$(systemctl is-active docker)
echo " "
while true; do  

    echo -e "${ROJO}"

    echo "1. Llistar contenidors actius"  

    echo "2. Llistar contenidors inactius"  

    echo "3. Engegar contenidor"

    echo "4. Atura contenidor"

    echo "X. Comprovar servei docker"

    echo "S. Sortir"

    echo " "

    read -p "Escull una opció: " opcio 

    case $opcio in  

        1) clear; echo "Aquesta és la llista de contenidors en actius:"; echo " "; docker ps ;;  

        2) clear; echo "Aquesta és la llista de contenidors actualment inactius:"; echo " "; docker ps -a ;;  

	3) clear; docker ps -a ; echo " "; read -p "Nom del contenidor a engegar (pots posar només els primers caràcters del CONTAINER ID) :" conten1; docker start $conten1; echo " "; docker ps;;  

	4) clear; docker ps ; echo " " ; read -p "Nom del contenido a atura (pots posar només els primers caràcters del CONTAINER ID) : " conten2; docker stop $conten2;;

	X) echo " "; if [[ "$statservei" == "active" ]]; then
    echo "El servei s'està executant."
else
    echo "El servei NO s'està executat."
fi;;

	S) echo -e "$NOCOL"; break ;;


        *) echo "Opció no vàlida, feu servir 1,2,3,4 ó S." ;;  

    esac  
echo " "
done  
 

