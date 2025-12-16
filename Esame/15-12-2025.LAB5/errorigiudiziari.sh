#!/bin/bash
while read PID DESCV ; do
	while read DID PID2 ; do
		while read NAME SURNAME DID2 DESCR ; do
			if [[ ${PID}==${PID2} && ${DID}==${DID2} ]]; then
				printf "Nome e cognome: %s %s\tDescrizione reato: %s\tDescrizione verdetto: %s\n" "$NAME" "$SURNAME" "$DESCR" "$DESCV"
				break
			fi
		done < ./denunce.txt
	break
	done < ./processi.txt
done < ./verdetti.txt
