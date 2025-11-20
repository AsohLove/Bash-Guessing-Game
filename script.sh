#! /bin/bash



echo   "=================="


# defined variables of the range of numbers to find the random numbers
lower=10
higher=20


#Determine the random number and assign it
RAN_NUM=$(( RANDOM % ( higher - lower + 1) + lower ))
try=0
max_try=5


# echo  "=================="

while [[ $try -lt $max_try ]]; do

    # Receive a number from a player
    read -r -p "Enter a number of your choice: " num


echo   "=================="

    if [[ $num -eq $RAN_NUM ]]; then 
        echo "Congratulations!! You guessed the right random number."
        break
    else 
        try=$((try + 1))

        #Determine the number of attempts left after failing
        try_left=$(( max_try - try ))

        if [ $try_left -gt 0 ]; then
            echo "Wrong guess. $try_left tries left "
        else 
            echo "You failed the game. YOur tries are finished and correct guess is $RAN_NUM"
        fi
    fi
done
