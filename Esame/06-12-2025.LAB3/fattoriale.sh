#!/bin/bash
VAR=$*
RES=1
while [[ ${VAR} -ne 0 ]]; do
	(( RES=${RES}*${VAR} ))
	(( VAR=${VAR}-1 ));
done
echo ${RES}		
