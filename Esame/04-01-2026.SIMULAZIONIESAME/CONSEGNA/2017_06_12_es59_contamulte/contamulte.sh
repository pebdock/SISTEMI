#!/bin/bash

VALOREMULTAPRECEDENTE=""
COUNTER=0
while read NOME COGNOME VALOREMULTA GIORNO MESE ANNO ALTRO ; do 

	if [[ -z ${NOME} || -z ${COGNOME} || -z ${VALOREMULTA} || -z ${GIORNO} || -z ${MESE} || -z ${ANNO} || -n ${ALTRO} ]] ; then
		echo "read found no data, stop"
		exit 1
	fi

	if [[ "${VALOREMULTAPRECEDENTE}" == "" ]] ; then
		# prima riga che leggo
		VALOREMULTAPRECEDENTE=${VALOREMULTA}
		COUNTER=1
        else	# ho gia' letto qualche riga prima

	        if [[ "${VALOREMULTAPRECEDENTE}" == "${VALOREMULTA}" ]] ; then
			(( COUNTER=${COUNTER}+1 ))
		else
			# trovato un valore diverso, stampo il numero dei valori precedenti e passo a quello attuale
			echo "${VALOREMULTAPRECEDENTE} ${COUNTER}"
				
			# comincio a contare il valore attuale
			VALOREMULTAPRECEDENTE=${VALOREMULTA}
			COUNTER=1
		fi
	fi
done

# arrivo qui quando non trovo altre righe, devo stampare l'ultima statistica
# faccio un controllo nel caso il file fosse vuoto e non avessi letto nulla

if [[ "${VALOREMULTAPRECEDENTE}" != "" ]] ; then
	# nel file c'era qualche riga
	echo "${VALOREMULTAPRECEDENTE} ${COUNTER}"
fi

exit 0


