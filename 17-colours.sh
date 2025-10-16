#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # Failure is another than 0
fi
VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
       echo -e "ERROR:: Installing $2 ... $R failure $N"
       exit 1
    else
       echo -e "Installing $2 ... $G success $N"
 fi
}
dnf list installed mysql
# install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e "MYSQL already exist ... $Y SKIPPING $N"
fi    

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo -e "NGINX already exist ... $Y SKIPPING $N"
fi    
dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "PYTHON3 already exist ... $Y SKIPPING $N"
fi    