#!/bin/bash
while read ANNO LUOGO MOTIVO DANNI ; do
	if [[ -z ${MOTIVO} ]] ; then
		echo "INSERIRE DATI VALIDI NEL FILE DI TESTO"
	else
		echo ${MOTIVO}
	fi
done < ./cadutevic.txt | sort | uniq -c | while read A B ; do echo -e "${B} ${A}" ; done
