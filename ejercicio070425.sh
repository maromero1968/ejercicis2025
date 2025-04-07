#!/bin/bash  

clear
echo " "
while true; do  

    echo "1. Llistar contenidors actius"  

    echo "2. Llistar contenidors inactius"  

    echo "3. Engegar contenidor"

    echo "4. Atura contenidor"

    echo "S. Sortir"

    echo " "

    read -p "Escull una opció: " opcio 

    case $opcio in  

        1) clear; echo "Aquesta es la llista de contenidors en ejecucio:"; docker ps ;;  

        2) clear; echo "Aquesta es la llista de contenidors actualment aturats:"; docker ps -a ;;  

	3) clear; docker ps -a ; echo " "; read -p "Nom del contenidor a engegar (pots possar nomes els primers caracters del CONTAINER ID) :" conten1; docker start $conten1; echo " "; docker ps;;  

	4) clear; docker ps ; echo " " ; read -p "Nom del contenido a atura (pots possar nomes els primers caracters del CONTAINER ID) : " conten2; docker stop $conten2;;

	S) break ;;

        *) echo "Opció no vàlida, feu servir 1,2,3,4 ó S." ;;  

    esac  
echo " "
done  
 

