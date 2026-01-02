#!/bin/bash
MULTAPREC=""
COUNT=0
while read NOME COGNOME AMMONTARE GIORNO MESE ANNO ALTRO; do
	if [[ ${AMMONTARE} -eq ${MULTAPREC} ]] ; then
		(( COUNT=${COUNT}+1 ))
	else
		if [[ ${COUNT} -gt 0 ]] ; then
			printf "%s\t%s\n" "${MULTAPREC}" "${COUNT}"
		fi
		COUNT=1
		MULTAPREC=${AMMONTARE}
	fi
done
if [[ ${COUNT} -gt 0 ]] ; then
	printf "%s\t%s\n" "${MULTAPREC}" "${COUNT}"
fi
