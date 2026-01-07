#!/bin/bash
if (( $# != 1 )) ; then
	echo "Inserire un argomento" >&2
	exit 1
fi

STRINGA="$@"

NSTRINGA=${#STRINGA}

CONDIZIONE=1;
INDEXA=0;
INDEXB=0;

for (( i=0;i<${NSTRINGA};i=$i+1 )) ; do

	CAR=${STRINGA:$i:1}
	SUCC=${STRINGA:$(($i+1)):1}

	if [[ ${CONDIZIONE} -eq 1 && ${CAR} == "A" ]] ; then
		(( INDEXA=${INDEXA}+1 ))
			if [[ ${SUCC} == "B" ]] ; then
				CONDIZIONE=0
			elif [[ ${SUCC} == "A" ]] ; then
				CONDIZIONE=1
			else
				echo "falso"
				exit 1
			fi

	elif [[ ${CONDIZIONE} -eq 0 && ${CAR} == "B" ]] ; then
		(( INDEXB=${INDEXB}+1 ))
		if [[ ${SUCC} != "B" && -n ${SUCC} ]] ; then
                                echo "falso"
				exit 2
		fi
	fi
done

if (( ${INDEXA} == ${INDEXB} && ${INDEXA} != 0 && ${INDEXB} != 0 )) ; then
	echo "vero ${INDEXA}"
	exit 0
else
	echo "falso"
	exit 3
fi
