while read A B C ; do echo $B ; done <<FINE
uno due tre quattro
alfa ${VAR} gamma
gatto cane
FINE
echo ciao
