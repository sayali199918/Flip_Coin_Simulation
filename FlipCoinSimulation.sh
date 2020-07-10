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
