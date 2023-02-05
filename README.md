# Deploy-VM-CS425
The following scripts will run the server/logger on 9th VM and the clients on 1-8 numbered VMs. Change the address to your VM address in the scripts. The script also copies the local code to the VMs, so correct the paths accordingly in the scripts.


In Terminal 1:

```
export netid=<your netid>
export UIUC_PASSWORD=<your netid password>
./setup_server.sh
```


In Terminal 2:
```
export netid=<your netid>
export UIUC_PASSWORD=<your netid password>
./setup_client.sh
```