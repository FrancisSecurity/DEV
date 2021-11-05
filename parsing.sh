#!/bin/bash

    if [[ -z "$1" ]]; then
        echo "Uso: $0 Informe a URL. "
        echo "####################################################################################################"
        echo " " 
        echo "                             Ex:" $0 "www.google.com.br"
        echo " "
        echo "####################################################################################################"

        exit 1
    else
        echo -e "\E[01;32m-------------------------------------------------------------------------------------------------------------------------------------------------\E[01;32m"
        echo -e "                                 \E[01;31m Baixando Html para analisar .... Aguarde...\E[01;31m"

        wget -c $1 2> texto.txt
        if [[ $? -ne "0" ]]; then
            echo -e "erro ao baixar html"
            exit 1;
        else
            
            echo  -e "                                  Download Conluido...:"    
            echo -e "\E[01;32m-------------------------------------------------------------------------------------------------------------------------------------------------\E[01;32m"
        fi
    fi


html=$(grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l"  )
echo -e "\E[01;31m Coluna URL:                                            Coluna IP:\E[01;31m"

for i in $html 
do
    dns=$(host $i |grep "has address"|cut -d " " -f 4) 
    echo -e "\E[01;32m------------------------------------\E[01;32m"
    echo -e "\E[01;35m"$i                "                     "$dns"\E[01;35m"
    echo -e "\E[01;32m------------------------------------\E[01;32m"

done




