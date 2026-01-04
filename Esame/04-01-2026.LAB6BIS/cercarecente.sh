#!/bin/bash
FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h"`
RECENTE="";
for FILE in ${FILES}; do
	if [[ -z ${RECENTE} || ${FILE} -nt ${RECENTE} ]] ; then
		RECENTE=${FILE}
	fi
done
echo ${RECENTE}
