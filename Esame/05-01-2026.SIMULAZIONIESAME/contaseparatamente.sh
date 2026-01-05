#!/bin/bash
ARGOMENTI=$#
RIGHEPARI=0;
RIGHEDISPARI=0;
if [[ ${ARGOMENTI} -gt 9 ]] ; then
	echo "Numero di argomenti troppo elevato (>9)" >&2
	exit 1
else
	for (( i=1;i<=${ARGOMENTI};i=$i+1 )) ; do
		RIGHE=`wc -l < "${!i}"`
		(( INDEX=${i}%2 ))
		if [[ ${INDEX} -eq 0 ]] ; then
			(( RIGHEPARI=${RIGHEPARI}+${RIGHE} ))
		else
			(( RIGHEDISPARI=${RIGHEDISPARI}+${RIGHE} ))
		fi
	done
fi

echo ${RIGHEPARI}
echo ${RIGHEDISPARI} >&2
