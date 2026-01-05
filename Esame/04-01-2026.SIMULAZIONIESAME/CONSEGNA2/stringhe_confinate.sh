#!/bin/bash
while read ANNO LUOGO MOTIVO ; do
	if [[ -z ${MOTIVO} ]] ; then
		echo "INSERIRE DATI VALIDI NEL FILE DI TESTO"
		exit 1
	else
		echo ${MOTIVO%%'" '*}
	fi
done < ./cadutevic2.txt | sed 's/^.//' |  sort | uniq -c
