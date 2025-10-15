#!/bin/bash

# Everything in shell is consider as a string

NUMBER1=100
NUMBER2=400
NAME=DevOPS

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}" 

# size = 4; max index = 3 

LEADERS=("Hussain" "Eliyas" "Ismail" "Raheem")

echo "ALL leaders: ${LEADERS[@]}"
echo "First leaders: ${LEADERS[0]}"
echo "First leaders: ${LEADERS[3]}"
echo "First leaders: ${LEADERS[10]}"