#!/bin/bash

#Created by Pedro Apr 03, 2021

#It will use this to determine which employee was working at a specific time in the case of future losses."


# Given data $1 with format 09:00:00
# Given shift $2 with format AM|PM a
# Given File Name with format MMDD

#Ex: roulette_dealer_finder_by_time.sh 05:00:00 AM 0310


if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then

        echo  '';
        echo "USE THE FORMAT: roulette_dealer_finder_by_time.sh HH:MM:SS AM|PM DDMM";
        echo  '';

else

        echo '';
        grep $1" "$2 $3"_Dealer_schedule" | awk '{print "TIME: "$1,$2 "  ROULETTE DN: " $5,$6}';
        echo '';


fi
