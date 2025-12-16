#!/bin/bash
SOMMA=0
INDEX=1
for number in $@ ; do
	(( QUAD=number*number ))
	(( SOMMA=${SOMMA}+${QUAD}-${INDEX} ))
	(( INDEX=${INDEX}+1 ));
done
echo ${SOMMA}

