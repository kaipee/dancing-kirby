#!/bin/bash
 
tput civis -- invisible ## Hide the cursor
declare -a kirbies=("(>'-')>" "<('-')>" "<('-'<)" "<('-')>" "^('-')^" "<('-')>")
 
echo "Do the Kirby Dance!"

while true
do                                                                                                                                                                                                                                            
    for n in `seq 1 2`  # How many repetitions to iterate
    do
        for i in "${kirbies[@]}"
        do  
            echo -en "\e[s"  # Remember the cursor position
            echo -en "\e[1K"  # Clear the line up to cursor and print kirby
            echo -en "\e[1;38;5;213m$i"  # Clear the line up to cursor and print kirby
            echo -en "\e[u"  # Move cursor back stored position
            echo -en "\e[1C"  # Increment cursor position by 1
            sleep 0.2  # Slow down the movement
        done
    done
    echo -en "\r"  # Move cursor back to beginning of line
    echo -en "\e[2K"  # Clear the entire line
    sleep 0.1  # Slow down the movement
done
