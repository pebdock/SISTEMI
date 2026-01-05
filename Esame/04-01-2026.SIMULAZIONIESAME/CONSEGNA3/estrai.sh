#!/bin/bash
IFS=",\n"
SOMMA=0
while read A B C ; do
	if [[ -n ${A} && -n ${B} && -n ${C} && ${B} -ge 0 ]] ; then
		echo "${A},${C}"
		(( SOMMA=${SOMMA}+${B} ))
	else
		echo "Formato non corretto"
		exit 1
	fi
done < ./input1.txt
echo ${SOMMA}

