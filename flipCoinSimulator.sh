#!/bin/bash -x
#Display the welcome Statement
echo "Welcome the flip coin simulator"
#Generate a flip coin
tail=1
Flipcoin=$((RANDOM%2))
if(($Flipcoin == tail ))
then
	echo "Tail"
else
	echo "Head"
fi
#Declare Varible Constant
head=0
tail=0
echo "Enter the number"
#Taking a number from user
read user
#Declare Dictionary
declare -A FlipCoin
for((index=0;index<$user;index++))
do
	#Generate a random number
	RandomCoin=$((RANDOM%2))
	case $RandomCoin in
		0)
			flipCoin[$index]="H"
			((head++))
			;;
		1)
			flipCoin[$index]="T"
			((tail++))
			;;
	esac
done
echo "Generate the singlet head and tail" ${flipCoin[@]}
#We are finding of percentage of HEAD and TAIL
percentageOfHead=`echo "scale=2; ($head*100)/$user" | bc -l`
echo $percentageOfHead
echo $head
percentageOfTail=`echo "scale=2; ($tail*100)/$user" | bc -l`
echo $percentageOfTail
echo $tail
