#!/bin/bash
LMIN=$1
HMAX=$2
while read NOME LARGHEZZA ALTEZZA PROFONDITA ; do
	if [[ ${LARGHEZZA} -ge ${LMIN} && ${ALTEZZA} -le ${HMAX} ]] ; then
		echo "${NOME} ${LARGHEZZA} ${ALTEZZA} ${PROFONDITA}"
	fi 
done < divani.txt
