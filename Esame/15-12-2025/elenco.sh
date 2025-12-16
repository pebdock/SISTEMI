#!/bin/bash
LungNomiDirectory=0
NoDir=0
for file in `ls -A`; do
	if [[ -d ${file} ]] ; then
		(( LungNomiDirectory=${LungNomiDirectory}+${#file} ))
	else
		(( NoDir=${NoDir}+1 ))
	fi
done
echo "Lunghezza nomi directory è ${LungNomiDirectory} mentre ho ${NoDir} non directory"	
