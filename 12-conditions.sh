#!/bin/bash

echo "Please enter the number:"
read NUMBER

if (( NUMBER <= 1 )); then
    echo "$NUMBER is not a prime number."
    exit
fi

is_prime=1

for (( i=2; i*i<=NUMBER; i++ ))
do
    if (( NUMBER % i == 0 )); then
        is_prime=0
        break
    fi
done

if (( is_prime == 1 )); then
    echo "$NUMBER is a prime number."
else
    echo "$NUMBER is not a prime number."
fi
