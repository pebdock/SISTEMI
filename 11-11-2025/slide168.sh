#!/bin/bash
while read nome cognome data ; do
    if read accusa verdetto ; then
        echo $cognome errore $verdetto
    else
        echo terminazione inaspettata del file di input
        exit1
    fi
done < assoluzioniinaspettate.txt
