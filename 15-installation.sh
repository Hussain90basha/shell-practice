#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # Failure is another than 0
fi
VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 is failure"
    exit 1
else
    echo "Installing $2 is success"
 fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"

 dnf insatll nginx -y
VALIDATE $? "Nginx"

 dnf insatll python3 -y
 VALIDATE $? "python3"
 