#!/bin/bash
while read RIGA ; do
	cut -d $'\t' -f 3 <<< "${RIGA//\"/}"
done < ./cadutevic.txt | sort | uniq -c
