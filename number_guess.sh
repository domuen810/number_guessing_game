#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -q -c"

echo "Enter your username:"
read USER_INPUT

while [[ -z $USER_INPUT ]]
do
  echo "Enter your username:"
  read USER_INPUT
done

USERNAME=$($PSQL "SELECT user_name FROM users WHERE user_name = '$USER_INPUT'")

if [[ -z $USERNAME ]]
then
  echo "Welcome, $USER_INPUT! It looks like this is your first time here."
  $PSQL "INSERT INTO users(user_name) VALUES('$USER_INPUT')"
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_INPUT'")
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_INPUT'")
  GAME_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT COALESCE(MIN(number_of_guesses), 0) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0 # Not required, but makes the code clearer
read GUESS_NUMBER

while [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS_NUMBER
done

while [[ $GUESS_NUMBER -ne $SECRET_NUMBER ]]
do
  (( NUMBER_OF_GUESSES++ ))

  if [[ $GUESS_NUMBER -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS_NUMBER -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  fi
  read GUESS_NUMBER
  while [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    read GUESS_NUMBER
  done
done

(( NUMBER_OF_GUESSES++ ))
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
$PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)"
