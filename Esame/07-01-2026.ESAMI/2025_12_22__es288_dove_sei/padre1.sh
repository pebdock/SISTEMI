#!/bin/bash
for (( i=0;i<6;i=$i+1 )) ; do
	(( CASUALE=${RANDOM}%3 ))
	(( CASUALE=${CASUALE}+1 ))
	./figlio1.sh ${CASUALE}
	echo
done
