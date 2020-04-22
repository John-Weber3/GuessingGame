#!/usr/bin/env bash
# File: guessinggame.sh
# Author: John Weber

# $1 is for response and $2 is for number_files
function compare_values {
   if [[ $1 -eq $2 ]]
  then
    echo "That is correct"
    correct_number="yes"
  elif [[ $1 -gt $2 ]]
  then
    echo "Too high"
  else
    echo "Too low"
  fi
}


# Number of files in dir
number_files=$(ls | wc -w)


correct_number="no"
while [[ $correct_number != "yes" ]]
do
  echo "Guess the number of files in this directory"
  read response 
  compare_values $response $number_files
done
