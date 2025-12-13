#!/bin/bash
COUNT=1
echo "INDICE PARI"
for name in "$@"; do
	if((${COUNT}%2==0)); then
		echo -n "${!COUNT} ";
	fi
	(( COUNT++ ))
done
COUNT=1
echo -e "\nINDICE DISPARI"
for name in "$@"; do
        if((${COUNT}%2!=0)); then
                echo -n "${!COUNT} ";
        fi
	(( COUNT++ ))
done
echo -e "\n"
