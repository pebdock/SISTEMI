#!/bin/bash
INDEX=$1
if [[ ${INDEX} -eq 0 ]] ; then
	echo ${INDEX};
	exit 0;
elif [[ ${INDEX} -gt 0 ]] ; then
	for (( i=0;i<${INDEX};i=$i+1 )); do
	./discendenti.sh $(( ${INDEX}-1 )) &
	done
	wait
	echo ${INDEX}
else
	echo "Inserire un argomento valido intero maggiore o uguale a 0"
fi
