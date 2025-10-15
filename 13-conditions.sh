#!/bin/bash

echo "Enter the year:"
read YEAR

if [ $(($YEAR % 4)) -eq 0 ]; then
    echo "year is a LEAP YEAR"
 else
    echo "year is not a LEAP YEAR"
fi       