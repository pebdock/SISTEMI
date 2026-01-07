#!/bin/bash
IFS=$',\n'
SOMMA=0
while read A NUM C ; do
	echo "${A},${C}"
	(( SOMMA=${SOMMA}+${NUM} ))
done < input1.txt
echo ${SOMMA}
