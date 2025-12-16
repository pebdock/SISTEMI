#!/bin/bash
ACount=0
while read A; do
	if [[ -n `grep "A" <<< ${A}` ]]; then
		(( ACount=${ACount}+`wc -c <<< ${A}` ))
	fi
done
echo "I caratteri sono ${ACount}"
