#!/bin/bash

# check for ssh server
for i in 172.22.228.{1..255} 
do
# checkport $i 22
# echo "Check Connection to $i"
curl --connect-timeout 0.2 http:/$i:22 -s
if [ "$?" -ne 28 ]
then
echo "Connection to $i: "
curl --connect-timeout 0.2 http:/$i:22
fi
done
