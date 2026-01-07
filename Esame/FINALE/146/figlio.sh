#!/bin/bash
(( INDICE=${INDICE}+1 ))
echo $BASHPID
if (( ${INDICE} > 10 )) ; then
	exit 0
else
	./figlio.sh
	exit 0
fi
