#!/bin/bash
source /opt/scripts/teste.sh
echo ""
echo ""
echo ""
echo ""


if [[ -z "$1" ]]; then
  echo "Uso: $0 informe a rede a ser varrida. "
  #echo ${#1} 
    exit 1
else
vericarede=$(echo  $1| cut -c-11)

echo "####################################################################################################"
echo ""
echo ""
echo "Scaneando a rede ...:$1"
echo ""
echo ""
echo "####################################################################################################"



vari="1"
while [ $vari -le "254" ];
  do

    #echo $vari
    
    /bin/ping -n -c 1 -W 1 -q $vericarede$vari > /dev/null
    if [ $? != 0 ]; then
        ((vari=$vari+1))
        #echo $vericarede$vari "Nao Responde"
        
    else
        echo "( $vericarede$vari )"
        ((vari=$vari+1))
    fi    
done
	

fi
