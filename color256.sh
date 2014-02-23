#!/bin/bash

BACKGROUND="\e[48;5;232m"
FLAG1=""
FLAG2=""
FLAG3=""

while getopts "b:BUR" opt
do
    case $opt in
        "b") BACKGROUND="\e[48;5;${OPTARG}m";;
        "B") FLAG1="1;";;
        "U") FLAG2="4;";;
        "R") FLAG3="7;";;
    esac
done

for code in {0..15}
do
    printf "\e[${FLAG1}${FLAG2}${FLAG3}38;5;${code}m${BACKGROUND}%03d\e[0m" ${code}
    printf "\e[38;5;0m\e[48;5;${code}m%4s\e[0m" " "
    if [[ $code = 7 ]]; then
        printf "\n"
    fi
done
printf "\n"

for code in {16..255}
do
    printf "\e[${FLAG1}${FLAG2}${FLAG3}38;5;${code}m${BACKGROUND}%03d\e[0m" ${code}
    printf "\e[38;5;0m\e[48;5;${code}m%4s\e[0m" " "
    if [[ $(((code - 16) % 6)) = 5 ]]; then
        printf "\n"
    fi
done


