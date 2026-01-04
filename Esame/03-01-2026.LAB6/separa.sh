#!/bin/bash
NUM=1
PERCORSO=`cut -d ':' -f ${NUM} <<< ${PATH}`
while [[ -n ${PERCORSO} ]]; do
	echo "${PERCORSO} ${#PERCORSO}"
	(( NUM=${NUM}+1 ))
	PERCORSO=`cut -d ':' -f ${NUM} <<< ${PATH}`	
done	
	
