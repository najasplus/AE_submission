README.md: guessinggame.sh
	touch README.md
	echo "## Guessing Game by A. E." > README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md