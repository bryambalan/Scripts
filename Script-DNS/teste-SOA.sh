#!/bin/bash

FinalIndex=`wc -l /home/made4it/script/zonas-aut | cut -d' ' -f1`

for j in $(seq 1 $FinalIndex);
do
	linhas=`cat /home/made4it/script/zonas-aut | head -$j | tail -1`
	 echo -e "\n !!!!!!!!!!!!!! Teste da Zona  $linhas !!!!!!!!!!!!!!!!!!\n"
  		 dig @localhost SOA $linhas +short
done
