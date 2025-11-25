LungNomiDirectory=0
NotDir=0

for riga in $(ls ./); do
    if [[ -d ${riga} ]]; then
        LungNomiDirectory=$(($LungNomiDirectory + 1 + ${#riga}))
    else
        NotDir=$(($NotDir + 1))
    fi
done

echo $LungNomiDirectory
echo $NotDir

