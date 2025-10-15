#!/bin/bash

echo "Enter the number:"
read number

if [ $(($NUMBER)) -lt 0 ]; then
    echo "even number"
else
    echo "odd umber"    