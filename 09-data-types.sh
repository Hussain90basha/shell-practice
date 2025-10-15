#!/bin/bash

# Everything in shell is consider as a string

NUMBER1=100
NUMBER2=400
NAME=DevOPS

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}" 

LEADERS=("Husssain" "Eliyas" "Ismail")

echo "ALL leaders: ${LEADERS[@]}"
echo "First leaders: ${LEADERS[0]}"
