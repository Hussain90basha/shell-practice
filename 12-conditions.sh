#!/bin/bash

echo "Please enter the prime number:"
read NUMBER

if [ $(( $NUMBER % 2 -lt 0))]; then
    echo "Given number $NUMBER is PRIME NO."
else
    echo "Given number $NUMBER is PRIME NO. OR NOT"   
fi    