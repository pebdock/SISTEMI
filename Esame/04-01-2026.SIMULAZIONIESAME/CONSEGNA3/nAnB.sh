#!/bin/bash

PAROLA="$1"
LUNGHEZZA=${#PAROLA}
INDEXB=0;
LUNGHEZZAA=0
LUNGHEZZAB=0

for (( i=0;i<${LUNGHEZZA};i=$i+1 )) ; do
	LETTERA="${PAROLA:${i}:1}"
	if [[ "${LETTERA}" == "A" && ${INDEXB} -eq 0 ]] ; then
                (( LUNGHEZZAA=${LUNGHEZZAA}+1 ))
        elif [[ "${LETTERA}" == "B" ]] ; then
                INDEXB=1
                (( LUNGHEZZAB=${LUNGHEZZAB}+1 ))
        else
                echo "falso"
                exit 1
        fi

done

if [[ ${LUNGHEZZAA} -eq ${LUNGHEZZAB} && ${LUNGHEZZAA} -gt 0 && ${LUNGHEZZAB} -gt 0 ]] ; then
	echo "vero N=${LUNGHEZZAA}"
else
	echo "falso"
fi
