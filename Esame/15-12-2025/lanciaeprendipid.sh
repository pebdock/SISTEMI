#!/bin/bash
i=0
PIDS="";
while [[ i -lt 10 ]]; do
	./puntini.sh 40 1>&2 &
	PIDS="${PIDS} $!" 
	(( i=${i}+1 ))
done
echo ${PIDS}
