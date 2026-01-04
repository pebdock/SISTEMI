#!/bin/bash
PAROLA=$@
for (( i=0; i<${#PAROLA}; i=$i+1 )) ; do
	echo ${PAROLA:${i}:1}
done | sort | uniq -c | while read A B ; do echo $B $A ; done
