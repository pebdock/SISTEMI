#!/bin/bash
RISULTATO=""
while read NOME2 COGNOME2 MAT2 VOTO2 ; do
	CONDIZIONE=1
	while read NOME1 COGNOME1 MAT1 VOTO1 ; do
		if [[ ${MAT1} -eq ${MAT2} ]] ; then
			CONDIZIONE=0
		fi
	done < RisultatiProvaPratica1.txt
	if [[ ${VOTO2} -lt 18 && ${CONDIZIONE} -eq 1 ]] ; then
		if [[ -n ${RISULTATO} ]] ; then
			while read MAT NOME COGNOME VOTO ; do
				if [[ ${COGNOME2} < ${COGNOME} ]] ; then
					RISULTATO="${MAT2} ${NOME2} ${COGNOME2} ${VOTO2}\n"${RISULTATO}
				else
					RISULTATO=${RISULTATO}"\n${MAT2} ${NOME2} ${COGNOME2} ${VOTO2}"
				fi
			done <<< ${RISULTATO}
		else
			RISULTATO="${MAT2} ${NOME2} ${COGNOME2} ${VOTO2}"
		fi
	fi
done < RisultatiProvaPratica2.txt
echo -e ${RISULTATO}
