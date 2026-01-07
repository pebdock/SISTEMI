#!/bin/bash
FILES=$(find /usr/include/linux/ -mindepth 2 -name "*.h")
RECENTE="";
for file in ${FILES}; do
	if [[ -z "${RECENTE}" || "${file}" -nt "${RECENTE}" ]] ; then
		RECENTE="${file}"
	fi
done

echo "${RECENTE}" 
