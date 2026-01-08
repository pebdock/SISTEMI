#!/bin/bash
if (( $# > 9 )) ; then
	echo "Inserire al massimo 9 argomenti" >&2
	exit 1;
fi

RIGHEPARI=0
RIGHEDISPARI=0

for (( i=1;i<=$#;i=$i+1 )) ; do
	if [[ ! -e ${!i} ]] ; then
		echo "Il file ${!i} non esiste" >&2
		exit 1
	else
		RIGHE=$(wc -l ${!i} | cut -d " " -f 1)
		if (( $i%2==0 )) ; then
			(( RIGHEPARI=${RIGHE}+${RIGHEPARI} ))
		else
			(( RIGHEDISPARI=${RIGHE}+${RIGHEDISPARI} ))
		fi
	fi
done
echo ${RIGHEPARI}
echo ${RIGHEDISPARI} 1>&2
