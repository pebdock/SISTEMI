#!/bin/bash
while read NOME COGNOME MATRICOLA VOTO ALTRO ; do
	if [[ ${VOTO} -lt 18 && -z "$(grep -w "${MATRICOLA}" ./RisultatiProvaPratica1.txt)" ]] ; then
		echo "${MATRICOLA} ${NOME} ${COGNOME} ${VOTO}"
	fi
done < ./RisultatiProvaPratica2.txt | sort -k 3
