#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER= "/var/log/shell-script"
SCRIPT_NAME=$ (echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)"

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

dnf list installed mysql &>>$LOG_FILE
# install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "MYSQL"
else
    echo -e "MYSQL already exist ... $Y SKIPPING $N"
fi    

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "Nginx"
else
    echo -e "NGINX already exist ... $Y SKIPPING $N"
fi    
dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE
    VALIDATE $? "python3" 
else
    echo -e "PYTHON3 already exist ... $Y SKIPPING $N"
fi    