#!/bin/bash
for (( i=1;i<=10;i=$i+1 )) ; do
	SCRIPT="s${i}.sh"
	rm ${SCRIPT}
done
