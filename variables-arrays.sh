#!/bin/bash


#Variable assignments
TARGET="127.0.0.1:8000"
PORT=80

#command substitution
CURRENT_IP=$(hostname -I | awk '{print $1}')

#Print $target

#Arrays
PORTS=(21 22 23 25 80 443 3306 3389 8080)

TARGETS=("127.0.0.1:8000" "192.168.116.88")
echo ${PORTS[0]}

for port in "${PORTS[@]}"; do
   echo "Scanning ports:$port"
done

#read file into array
mapfile -t HOSTS < targets.txt
echo $HOSTS