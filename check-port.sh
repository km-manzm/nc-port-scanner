#!/bin/bash

function checkport {
	if nc $1 $2 <<< '' &> /dev/null
	then
		echo "[+] Port $1/$2 is open"
	else
		echo "[-] Port $1/$2 is closed"
	fi
}

# Example checks
for i in 172.22.228.{1..255} 
do
# checkport $i 22
echo "Check Connection to $i"
curl --connect-timeout 0.3 http:/$i:22
echo $?
done
