#!/bin/bash
EXE_FILE=../minishell

#LOGO PRINT
printf '\n'
printf '\033[0;94m' #Baby Blue Colour
cat ./img/logo.txt
printf '\033[37m' #Default Colour
printf '\n'
printf '\n'

#ERROR CHECKING
if [ ! -f "$EXE_FILE" ]; then
	echo "Missing executable"
	echo "Place this tester in your Minishell repo"
	printf '\n'
	exit -1
fi

#Now we can start :D
rm -rf results
mkdir results
mkdir results/YOUR_RESULTS
mkdir results/BASH_RESULTS
bash minishell
