#!/bin/bash

#Create by Pedro | Apr 03 2021


# Given data $1 with format 09:00:00
# Given shift $2 with format AM|PM 
# Given File Name with format MMDD

#By default, the script shows all games available by the time.




if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then

	echo  '';
	echo "USE THE FORMAT: roulette_dealer_finder_by_time_and_game.sh HH:MM:SS AM|PM DDMM";
        echo  '';

else

	echo '';
	grep $1" "$2 $3"_Dealer_schedule" | awk '{print "TIME: "$1,$2  "  BLACKJACK: " $3,$4  "  ROULETTE DN: " $5,$6 " TEXASHOLD DN: " $7,$8}';
        echo '';


fi
