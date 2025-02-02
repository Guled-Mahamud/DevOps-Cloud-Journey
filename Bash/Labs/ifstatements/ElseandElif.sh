#!/bin/bash 

score=88

if [ $score -ge 90 ]
then
  echo "excellent"

elif [ $score -ge 80 ]
then
  echo "Good"
else
  echo "Better luck next time!"

fi

