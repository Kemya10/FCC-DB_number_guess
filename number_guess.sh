#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Prompt username
echo "Enter your username:";
read USERNAME;

PLAYERNAME_RESULT=$($PSQL "SELECT player FROM players WHERE player = '$USERNAME'")
USER_ID=$($PSQL "SELECT user_id FROM players WHERE player = '$USERNAME'")

if [[ -z $PLAYERNAME_RESULT ]]
then
echo "Welcome, $USERNAME! It looks like this is your first time here."
INSERT_USERNAME=$($PSQL "INSERT INTO players(player) VALUES('$USERNAME')")

else 

GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
BEST_GAMES=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID")

echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAMES guesses."

fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
COUNT_GUESS=0

echo "Guess the secret number between 1 and 1000:"
read GUESS_NUMBER

until [[ $GUESS_NUMBER == $SECRET_NUMBER ]]
do
	if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
	then         
	echo "That is not an integer, guess again:"
  read GUESS_NUMBER
	((COUNT_GUESS++))
	else
		if [[ $GUESS_NUMBER > $SECRET_NUMBER ]]
		then
		echo "It's lower than that, guess again:"
    read GUESS_NUMBER
		((COUNT_GUESS++))
		else
		echo "It's higher than that, guess again:"
    read GUESS_NUMBER
		((COUNT_GUESS++))
		fi
	fi
done

((COUNT_GUESS++))
USER_ID=$($PSQL "SELECT user_id FROM players WHERE player = '$USERNAME'")
INSERT_RESULT_GAME=$($PSQL "INSERT INTO games(user_id, secret_number, number_of_guesses) VALUES($USER_ID, $SECRET_NUMBER, $COUNT_GUESS)")
echo "You guessed it in $COUNT_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
