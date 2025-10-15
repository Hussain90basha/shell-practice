#!/bin/bash

echo "Enter the year:"
read YEAR

if [ $(($YEAR % 4)) -eq o ]; then
    echo "LEAP YEAR"
 else
    echo "Is not a LEAP YEAR"
fi       