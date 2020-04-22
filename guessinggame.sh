#!/usr/bin/env bash

# Number of files in dir
number_files=$(ls | wc -w)

echo "Guess the number of files in this directory"
read response

if [[ $response -eq $number_files ]]
then
 echo "That is correct"
elif [[ $response -gt $number_files ]]
then
 echo "Too high"
else
 echo "Too low"
fi