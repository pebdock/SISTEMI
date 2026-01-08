#!/bin/bash
while read ANNO LUOGO MOTIVO DANNI ; do
	echo ${MOTIVO}
done < ./cadutevic.txt | sort | uniq -c
