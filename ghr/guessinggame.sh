#!/usr/bin/env bash
# File: guessinggame.sh
let n=$(ls -1 ~/Documents/uwb/github_assignment/count_files | wc -l)
echo "Can you correctly guess the number of files within count_files?"
echo "Hint: enter only an integer."
read -r number
    while [[ $number -gt 0 ]]
      do
      if [[ $number -eq n ]]
      then
      echo "Congratulations. You are indeed correct."
      break
      elif [[ $number -gt n ]]
      then
      echo "Incorrect. There are fewer files. Please guess again."
      read -r number
      elif [[ $number -lt n ]]
      then
      echo "Incorrect. There are more files. Please guess again."
      read -r number
      fi
      done
