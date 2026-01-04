#!/bin/bash
INPUT=$@
INDEX=0
NEWINPUT=""
while [[ $INDEX -lt ${#INPUT} ]] ; do
        NEWINPUT=${NEWINPUT}${INPUT:$INDEX:1}$'\n'
        (( INDEX=$INDEX+1 ))
done | sort | uniq -c | while read n c ; do echo "${c} ${n}" ; done


