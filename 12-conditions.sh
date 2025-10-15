#!/bin/bash

echo "Please enter the number:"
read NUMBER

if [ $(( $NUMBER % 2 -lt 0))]; then
    echo "Given number $NUMBER is PRIME NUMBER"
else
    echo "Given number $NUMBER is PRIME NUMBER OR NOT"   
fi    