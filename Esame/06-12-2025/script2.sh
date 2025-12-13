#!/bin/bash
INDEX=$#
while (( ${INDEX} > "0" )) ; do
	echo "arg ${INDEX} is ${!INDEX}"
	(( INDEX=${INDEX}-1 ))
done
