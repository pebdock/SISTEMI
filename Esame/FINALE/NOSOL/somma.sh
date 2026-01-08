#!/bin/bash
SOMMAPARI=0;
SOMMADISPARI=0;
INDEX=1;
while read NUM ALTRO ; do
	if [[ "${NUM}" =~ ^-?[0-9]+$ && -z "${ALTRO}" ]] ; then
		if (( ${INDEX}%2==0 )) ; then
			(( SOMMAPARI=${SOMMAPARI}+${NUM} ))
		else
			(( SOMMADISPARI=${SOMMADISPARI}+${NUM} ))
		fi
	fi	
(( INDEX=${INDEX}+1 ))
done < ./numeri.txt
echo "pari:${SOMMAPARI} dispari:${SOMMADISPARI}"			
	
