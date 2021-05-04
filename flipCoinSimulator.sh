#! /bin/bash
heads=0
tails=0
count=0
while [ $heads -le 20 -a $tails -le 20 ]
do
flip=$(( RANDOM%2 ))
if [ $flip -eq 1 ]
then
	echo "Heads"
	heads=$(( heads+1 ))
else
	echo "Tails"
	tails=$(( tails+1 ))
fi
count=$(( count+1 ))
done
echo "Number of flips : "$count
if [ $heads -eq 21 ]
then
	echo "Heads won "$heads" times"
elif [ $tails -eq 21 ]
then
	echo "Tails won "$tails" times"
elif [ $heads -eq $tails ]
then
	heads1=0
	tails1=0
	while [ $heads1 -le 1 -a $tails1 -le 1 ]
	do
	flip1=$(( RANDOM%2 ))
	if [ $flip1 -eq 1 ]
	then
		heads1=$(( heads1+1 ))
	else
		tails1=$(( tails1+1 ))
	fi
	done
	if [ $heads1 -eq 2 ]
	then
		echo "heads won by "$heads1" points"
	elif [ $tails1 -eq 2 ]
	then
		echo "Tails won by "$tails1" points"
	fi
fi
