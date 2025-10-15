#!/bin/bash

echo "Enter the number:"
read number

if [ $(($NUMBER)) -lt 0 ]; then
    echo "positive number"
else
    echo "negative number"
 fi       