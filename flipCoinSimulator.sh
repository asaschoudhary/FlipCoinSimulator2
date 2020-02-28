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
#Declare Dictionary
declare -A FlipCoin
#Using a function for SINGLET
function getSinglet()
{
read -p "enter a user number:" user
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
echo "Generate the singlet head and tail" 
#We are finding of percentage of HEAD and TAIL
echo percentageOfHead=`echo "scale=2; ($head*100)/$user" | bc -l`
echo "H:"$head
echo percentageOfTail=`echo "scale=2; ($tail*100)/$user" | bc -l`
echo "T:"$tail
}
#Declare Constant
head=0
head1=0
tail=0
tail1=0
#Declare Dictionary
declare -A FlipCoin
#Using a function for DOUBLET
function getDoublet()
{
read -p "enter the number:" user
for((index=0;index<$user;index++))
do
	#Generate a random number
	RandomCoin=$((RANDOM%4))
	case $RandomCoin in
		0)
			flipCoin[$index]="HH"
			((head++))
			;;
		1)
			flipCoin[$index]="TT"
			((tail++))
			;;
		2)
			flipCoin[$index]="HT"
			((head1++))
			;;
		3)
			flipCoin[$index]="TH"
			((tail1++))
			;;
	esac
done
echo "Generate the Doublet head and tail" 
#We are finding of percentage of HEAD and TAIL
echo percentageOfHead=`echo "scale=2; ($head*100)/$user" | bc -l`
echo "HH:"$head
echo percentageOfHead1=`echo "scale=2; ($head1*100)/$user" | bc -l`
echo "HT:"$head1
echo percentageOfTail=`echo "scale=2; ($tail*100)/$user" | bc -l`
echo "TT:"$tail
echo percentageOfTail1=`echo "scale=2; ($tail1*100)/$user" | bc -l`
echo "TH:"$tail1
}
#Declare Constant
head=0
head1=0
head2=0
head3=0
tail=0
tail1=0
tail2=0
tail3=0
#Declare Dictionary
declare -A FlipCoin
#Using a function for TRIPLET
function getTriplet()
{
read -p "enter the number:" user
for((index=0;index<$user;index++))
do
	#Generate a random number
	RandomCoin=$((RANDOM%8))
	case $RandomCoin in
		0)
			flipCoin[$index]="HHH"
			((head++))
			;;
		1)
			flipCoin[$index]="TTT"
			((tail++))
			;;
		2)
			flipCoin[$index]="HTH"
			((head1++))
			;;
		3)
			flipCoin[$index]="THT"
			((tail1++))
			;;
		4)
			flipCoin[$index]="TTH"
			((head2++))
			;;
		5)
			flipCoin[$index]="HHT"
			((tail2++))
			;;
		6)
			flipCoin[$index]="THH"
			((head3++))
			;;
		7)
			flipCoin[$index]="HTT"
			((tail3++))
			;;
			
	esac
done
echo "Generate the Doublet head and tail" 
#We are finding of percentage of HEAD and TAIL
echo percentageOfHead=`echo "scale=2; ($head*100)/$user" | bc -l`
echo "HHH:"$head
echo percentageOfHead1=`echo "scale=2; ($head1*100)/$user" | bc -l`
echo "HTH:"$head1
echo percentageOfHead2=`echo "scale=2; ($head2*100)/$user" | bc -l`
echo "TTH:"$head2
echo percentageOfHead3=`echo "scale=2; ($head3*100)/$user" | bc -l`
echo "THH:"$head3
echo percentageOfTail=`echo "scale=2; ($tail*100)/$user" | bc -l`
echo "TTT:"$tail
echo percentageOfTail1=`echo "scale=2; ($tail1*100)/$user" | bc -l`
echo "THT:"$tail1
echo percentageOfTail2=`echo "scale=2; ($tail2*100)/$user" | bc -l`
echo "HHT:"$tail2
echo percentageOfTail3=`echo "scale=2; ($tail3*100)/$user" | bc -l`
echo "HTT:"$tail3
}

	echo "Welcome to flipcoin simulator"
	echo  "1.Flipcoin for for Singlet"
	echo  "2.Flipcoin for for Doublet"
	echo  "3.Flipcoin for for Triplet"
	read -p "Enter your flipcoin:" choice

case $choice in 
		1)
			getSinglet
			;;
		2)
			getDoublet
			;;
		3)
			getTriplet
			;;
		*)
			echo "Invalid flipCoin"
			;;
	esac



