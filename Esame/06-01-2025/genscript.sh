#!/bin/bash
for (( i=1;i<=10;i=$i+1 )) ; do
	SCRIPT="s${i}.sh"
	touch ${SCRIPT}
	 echo "echo "ciao${i}"" > ./${SCRIPT}
done

for (( i=1;i<=10;i=$i+1 )) ; do
	SCRIPT="s${i}.sh"
	chmod 700 ./${SCRIPT}
        ./${SCRIPT}
done

./elimina.sh
