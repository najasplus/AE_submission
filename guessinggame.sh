#!/usr/bin/env bash
# File: guessinggame.sh


function compare {
if [[ $guess -gt $numfiles ]]
	then 
	echo "That's a bit too much. Try smaller number:"
else
	echo "Number of files in the current directory is more than $guess. Try again:"
fi
}

function readnum {
echo "Guess how many files are in the current directory? Type your answer below:"
read guess
}

numfiles=$(find ./ -type f | wc -l)


while [[ $guess -ne $numfiles ]]
do
	compare
	readnum
done

echo "You guessed right! Congratulations!"

