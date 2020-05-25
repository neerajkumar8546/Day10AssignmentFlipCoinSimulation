#!/bin/bash -x

if [ $((RANDOM%2)) -eq 1 ]
then
		echo "Heads"
else
		echo "Tails"
fi
