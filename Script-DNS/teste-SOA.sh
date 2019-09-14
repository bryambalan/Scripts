#!/bin/bash

#arquivo=`cat /home/made4it/script/zonas | head -$1 | tail -1`
FinalIndex=`wc -l /home/made4it/script/zonas | cut -d' ' -f1`

for j in $(seq 1 $FinalIndex);
do
	linhas=`cat /home/made4it/script/zonas | head -$j | tail -1`
#	echo $linhas
	 echo -e "\n !!!!!!!!!!!!!! Teste da Zona  $linhas$i !!!!!!!!!!!!!!!!!!\n"
	 for i in {0..255};
 	 do
  		 dig @localhost -x $linhas$i +short
       	done
done