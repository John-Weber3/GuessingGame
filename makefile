# Creates and updates README.md

README.md:
	touch README.md
	echo "# Project: Bash, Make, Git, and GitHub" > README.md
	echo "Date and time at which make was run:" >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md