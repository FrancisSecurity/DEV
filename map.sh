#!/bin/bash
for i in $(cat list.txt);do
	var=$(curl -s -o /dev/null -w "%{http_code}" -H "User-Agent:User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0" mail.businesscorp.com.br/$i/)
	var1=$(curl -s -o /dev/null -w "%{http_code}" -H "User-Agent:User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0" mail.businesscorp.com.br/$i)
	if [ $var != 404 ];then
		echo "Diretório encontrado > mail.businesscorp.com.br/$i/"
		if [ $var1 != 404 ];then
			echo "arquivo encontrado > mail.businesscorp.com.br/$i" 
			fi
	fi
done
