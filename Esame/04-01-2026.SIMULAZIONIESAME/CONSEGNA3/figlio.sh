#!/bin/bash
if [[ ${INDICEATTUALE} -le ${INDICEMASSIMO} ]] ; then
	echo $BASHPID
	(( INDICEATTUALE=${INDICEATTUALE}+1 ))
	./figlio.sh
else
	exit 0
fi
