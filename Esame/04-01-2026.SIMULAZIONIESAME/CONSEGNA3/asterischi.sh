#!/bin/bash
SOMMA=0
while read NUM ; do 
	(( SOMMA=${SOMMA}+${NUM} )) ; 
done <<< `find /usr/include/ -type f -name "*.h" -exec grep -c -h '\*' {} \;`  
echo ${SOMMA} 1>&2

