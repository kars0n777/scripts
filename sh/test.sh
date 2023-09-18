#!/bin/bash

#echo "fuck you"

#echo $BASH
#echo $BASH_VERSION
#echo $HOME
#echo $PWD

#echo $(wtwitch c)

#name=Penisman
#echo I am $name

# not 10men=69
#men=69

#echo i want to $men


#echo "Enter name : "
#read name1 name2
#echo "Your name : $name1"
#echo "what is your mans name ?" 
#read man
#echo "your mans name is $man 😏"

echo "what is your network interface"
read $ni
sudo macchanger --random $ni 
