#!/bin/bash
INPUT=$@
INDEX=0
NEWINPUT=""
while [[ $INDEX -lt ${#INPUT} ]] ; do
	NEWINPUT=${NEWINPUT}${INPUT:$INDEX:1}$'\n'
	(( INDEX=$INDEX+1 ))
done
sort <<< ${NEWINPUT} | tail -n ${#INPUT} | uniq -c | while read N C ; do echo ${C} ${N} ; done
