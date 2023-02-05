#!/bin/bash
echo "Copy code"
sshpass -p $UIUC_PASSWORD scp -o StrictHostKeyChecking=no -r ./src "$netid@sp23-cs425-2409.cs.illinois.edu:/home/$netid"
echo "Sshing to server..."
sshpass -p $UIUC_PASSWORD ssh -o StrictHostKeyChecking=no "$netid@sp23-cs425-2409.cs.illinois.edu" "cd src && rm -f log && go run logger.go 4321"