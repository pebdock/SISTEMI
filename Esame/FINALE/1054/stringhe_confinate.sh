#!/bin/bash
cut -d $'\t' -f 3 ./cadutevic.txt | tr -d '"' | sort | uniq -c
