#!/bin/bash

if (( $# != 1 )) ; then
	echo "Inserire un argomento" >&2
	exit 1
elif [[ ! $1 =~ ^[0-9]+$ ]] ; then
	echo "Inserire un numero intero >= 0" >&2
	exit 1
fi

FIGLI=$1
if (( ${FIGLI} > 0 )) ; then
	for (( i=1;i<=${FIGLI};i=$i+1 )) ; do
		./discendenti.sh $(( ${FIGLI} - 1 )) &
	done
	wait
	echo ${FIGLI}
	exit 0
else
	echo $1
	exit 0
fi 
