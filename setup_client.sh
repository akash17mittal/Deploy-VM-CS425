#!/bin/bash

for i in {1..8}
do
	echo "Copying code to $i server"
	sshpass -p $UIUC_PASSWORD scp -o StrictHostKeyChecking=no -r ./src "$netid@sp23-cs425-240$i.cs.illinois.edu:/home/$netid"
	sshpass -p $UIUC_PASSWORD ssh -o StrictHostKeyChecking=no "$netid@sp23-cs425-240$i.cs.illinois.edu" "ls"
done



for i in {1..8}
do
	echo "SSHing to $i server"
	sshpass -p $UIUC_PASSWORD ssh -o StrictHostKeyChecking=no -n -f "$netid@sp23-cs425-240$i.cs.illinois.edu" "sh -c 'cd src; nohup python3 -u generator.py 10 | go run node.go node$i sp23-cs425-2409.cs.illinois.edu 4321 > /dev/null 2>&1 &'"
done
