#!/bin/bash

echo "enter the first string: "
read st1

echo "enter the second string: "
read st2

if [ "$st1" == "$st2" ]
then
	echo "strings match"
else
	echo "string don't match"
fi
