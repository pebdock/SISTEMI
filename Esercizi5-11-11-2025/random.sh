VAL=$RANDOM
COUNT=0;
echo $VAL
while(($VAL % 10 != 2));do
	VAL=$RANDOM
	COUNT=$(($COUNT+1))
	echo $VAL;
done
echo $COUNT

