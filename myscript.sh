#! /usr/bin/bash

# echo COMMAND
echo Hello World

# VARIABLES
# Uppercase by convention
# Letters, names and underscores

NAME="Ishan"
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your age: " AGE
echo "Your age is: $AGE"

# SIMPLE IF CONDTION
if [ "$NAME" == "Ishan" ]
then
    echo "Your name is Ishan"
fi

#IF ELSE
if [ "$NAME" == "Ishan" ]
then
    echo "Your name is Ishan"
else
    echo "Your name is not Ishan"
fi

#ELSE IF

if [ "$NAME" == "Jack" ]
then
    echo "Your name is Jack"
elif [ "$NAME" == "Brad" ]
then
    echo "Your name is Brad"
else
    echo "Your name is not Jack or Brad"
fi

#OPERATORS
########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

NUM1=10
NUM2=20

if [ "$NUM1" -gt "$NUM2" ]
then
    echo "Num1 is greater than Num2"
else
    echo "Num2 is greater than Num1"
fi

#FILE CONDITIONS
FILE="test.txt"

if [ -f "$FILE" ]
then
    echo "$FILE found in current directory"
else
    echo "$FILE not found in current directory"
fi

#CASE STATEMENTS

read -p "Are you over 21 or over? Y/N" ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
    echo "You are 21 years or older"
    ;;
    [nN] | [nN][oO])
    echo "You are 21 years or older"
    ;;
   *)
    echo "Please enter Y/N"
    ;;
esac

#SIMPLE FOR LOOP
NAMES="Jack Joy Bill Mark Brad"

for NAME in $NAMES
  do
    echo "Hello $NAME"
  done

#FOR LOOP TO RENAME FILES

#   FILES=$(ls *txt)
#   NEW="new"

#   for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
#     done

#WHILE LOOP - READ THROUGH FILE BY LINE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done <"./new-1.txt"

#FUNCTION

function sayHello(){
    echo "Hello World"
}

sayHello

#FUNCTION WITH PARAMETERS

function greet(){
    echo "Hello, I am $1 and I am $2"
}

greet "Brad" "20"


# CREATE FOLDER AND WRITE TO A FILE

mkdir hello
touch "hello/hello.txt"
echo "Hello World" >> "hello/hello.txt"
echo "Created directory, file and wrote to a file"