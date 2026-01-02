#!/bin/bash
while read MATRICOLA COGNOME NOME ALTRO; do
	if [[ -n ${MATRICOLA} && ${#MATRICOLA} -eq 10 && -n ${COGNOME} && -n ${NOME} && -z ${ALTRO} ]] ; then
		grep -B 1 --no-group-separator "SISTEMI OPERATIVI" lista.txt | grep -o ${MATRICOLA}
	fi
done < lista.txt
