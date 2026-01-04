#!/bin/bash
INDEX="";
VAL=0;
while read A B C D ; do
	
	if [[ -z ${INDEX} ]] ; then
                VAL=1
                INDEX=${C}
	elif [[ ${INDEX} -eq ${C} ]] ; then
		(( VAL=${VAL}+1 ))
	elif [[ ${INDEX} -ne ${C} ]] ; then
		echo -e "${INDEX}\t${VAL}"
		VAL=1
		INDEX=${C}
	fi
done

if [[ -n ${INDEX} ]] ; then
	echo -e "${INDEX}\t${VAL}" #stampo l'ultimo valore rimasto 
fi
