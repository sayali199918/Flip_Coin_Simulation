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
read -p "Enter the number of times you want to flip the coin:" n
echo $n
for (( i=0; i<$n; i++ ))
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

