#!/bin/bash
if [[ $(( RANDOM%2 )) -eq 0 ]] ; then
	echo -n c
else
	echo -n a
fi

