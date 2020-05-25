#!/bin/bash -x
#1=Head
#0=Tail
i=1
countHead=0
countTail=0
while [ $i -le 35 ]
do
	rand=$(($RANDOM%2))
	if [ $rand -eq 1 ]
	then
		countHead=$(( $countHead+1 ))
		if [ $countHead -eq 21 ]
		then
			echo "Wins Head"
		fi
	else 
		countTail=$(( $countTail+1 ))
		if [ $countTail -eq 21 ]
		then
				echo "Wins Tail"
		fi
	fi
	((i++))
done

if [ $countHead -lt 21 ] && [ $countTail -lt 21 ]
      then
         echo "Tie match"
fi
printf "\n"
echo "Number Of time Heads : "$countHead
printf "\n"
echo "Number Of time Tails : "$countTail
printf "\n"

if [ $countHead -gt $countTail ] && [ $countHead -ge 21 ]
then
      echo "Heads Win and how much : " $(($countHead-$countTail))
elif [ $countTail -gt $countHead ] && [ $countTail -ge 21 ]
then 
     echo "Tails Win and How much : " $(($countTail-$countHead))

fi




