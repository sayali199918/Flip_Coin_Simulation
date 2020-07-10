#!/bin/bash 
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
	if [ $headCount -eq $tailCount ]
	then
		while true
		do
			result=$(($RANDOM%2+1))
			if [ $result==1 ]
			then
				headCount=$(($headCount+1))
			else
				tailCount=$(($tailCount+1))
			fi
			if [ $(($headCount-$tailCount)) -eq 2 ]
			then
				echo "head wins by 2 and count is:" $headCount
			elif [ $(($tailCount-$headCount)) -eq 2 ]
			then
				echo "tail wins by 2 and count is:" $tailCount
			fi
		done
	fi
fi

