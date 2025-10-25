#!/bin/bash

count=5

    echo "Starting countdown..."
while [ $count -gt 0 ]
do
    echo "Time left: $Count"
    Sleep 1 #pause for 1 sec
    Count=$((count -1)) #Decrement the count
done

echo "Times up!"