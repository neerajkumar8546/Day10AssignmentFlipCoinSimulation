#!/bin/bash -x

#UC1 solution

echo "UC1 :- As a Simulator start with Flipping a Coin to Display Heads or Tails as winner"
printf "\n"
if [ $((RANDOM%2)) -eq 1 ]
then
      echo "Heads"
else
      echo "Tails"
fi
printf "\n"

#UC2
echo "UC2 :- As a simulator, loop through Multiple times of flipping a coin and show number oftimes head and tail has won"
printf "\n"
#1=Head
#0=Tail
i=1
countHead=0
countTail=0
while [ $i -le 30 ]
do
   rand=$(($RANDOM%2))
   if [ $rand -eq 1 ]
   then
      countHead=$(( $countHead+1 ))
   else
      countTail=$(( $countTail+1 ))
   fi
   ((i++))
done
printf "\n"
echo "Number Of time Heads : "$countHead
printf "\n"
echo "Number Of time Tails : "$countTail
printf "\n"

if [ $countHead -gt $countTail ]
then
      echo "Heads Win"
else
      echo "Tails Win"
fi




#UC3
echo "UC3 :- Modify the earlier UC 2 to continue till either of them have won 21 times. Show if it’s a Win or Tie. If Win then who won and by how much"
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




