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
