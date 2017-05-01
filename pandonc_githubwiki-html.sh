#!/bin/bash
#Script By @freddys6
#red "\033[1;31m\033[0m\n"
#green background "\e[42m"
#Blue background "Default \e[44m"
#Bold letters "\e[1mBold"
printf "\033[1;31m------>HELLO WELCOME TO Noth·ing·ness\033[0m\n"
ls | grep .md >> FilesToConvert.txt
filename="FilesToConvert.txt"
while read -r line
do
    name="$line"
    echo " 👀- $name"
done < "$filename"
sed 's/\.md//' FilesToConvert.txt | sed 's/\(.*\)/pandoc -f markdown_github \1.md -o \1.html/' | while read line; do $line; done
ls | grep .html 
printf "\e[42m"
echo it is Done BRO\!
printf "\033[0m\n"