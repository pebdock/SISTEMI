#!/bin/bash

while read NOME COGNOME MATRICOLA VOTO ; do
	CONDITION=`grep ${MATRICOLA} RisultatiProvaPratica1.txt | wc -l`
	if [[ ${CONDITION} -eq 0 && ${VOTO} -lt 18 ]]; then
		echo "${MATRICOLA} ${NOME} ${COGNOME} ${VOTO}"
	fi
done < RisultatiProvaPratica2.txt | sort -k 3
