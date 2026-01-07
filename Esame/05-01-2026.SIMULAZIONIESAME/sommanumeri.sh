#!/bin/bash
SOMMAPARI=0
SOMMADISPARI=0
INDEX=1
while read NUM ALTRO; do
	
	if [[ -n ${ALTRO} || -z ${NUM} || ! "${NUM}" =~ ^-?[0-9]+$ ]] ; then
		echo "Numeri non validi" >&2
		exit 1
	fi
	
	if [[ $(( $INDEX % 2 )) -eq 0 ]] ; then
		(( SOMMAPARI += ${NUM} ))
	else
		(( SOMMADISPARI += ${NUM} ))
	fi
	
	(( INDEX=${INDEX}+1 ))	

done < numeri.txt

echo -e "Somma righe pari = ${SOMMAPARI}\nSomma righe dispari = ${SOMMADISPARI}"
exit 0
