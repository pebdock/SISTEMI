#!/bin/bash

if (( $# != 2 )) ; then 
	echo "errore: servono 2 argomenti: larghezza_minima  altezza_massima"
	exit 1
fi

LARGMIN=$1
ALTMAX=$2

while read NOME LARG ALT PROF ALTRO ; do
	# echo "LETTO ${NOME} ${LARG} ${ALT} ${PROF} ${ALTRO}"
	if (( ${LARG} >= ${LARGMIN} && ${ALT} <= ${ALTMAX} )) ; then
		echo "${NOME} ${LARG} ${ALT} ${PROF} ${ALTRO}"
	fi
done < ./divani.txt


