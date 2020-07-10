#!/bin/bash -x
echo "Welcome to flip coin simulation program"
flipCoin=$(($RANDOM % 2 + 1))
echo $flipCoin
if [ $flipCoin -eq 1 ]
then
	echo "head wins"
else
	echo "tail wins"
fi
headCount=0
tailCount=0
while [ $headCount -ne 21 ] && [ $tailCount -ne 21 ]
do
	flipCoin=$(($RANDOM%2+1))
	if [ $flipCoin -eq 1 ]
	then
		echo "head wins"
		headCount=$(($headCount+1))
	else
		echo "tailwins"
		tailCount=$(($tailCount+1))
	fi
done
echo "head wins:" $headCount "times"
echo "tail wins:" $tailCount "times"
if [ $headCount -gt $tailCount ]
then
	win=$(($headCount-$tailCount))
	echo "head won by $win points"
elif [ $tailCount -gt $headCount ]
then
	win=$(($tailCount-$headCount))
	echo "tail won by $win points"
else
	echo "There is tie"
fi

