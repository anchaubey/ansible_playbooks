#!/bin/bash

for (( i=0; i<=10; i++ ))
do
  if [ $i -gt 6 ]
  then  
    break
  fi
  echo $i
done
