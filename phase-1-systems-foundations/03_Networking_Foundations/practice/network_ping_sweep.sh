#!/bin/bash

### \=======================================================

### DevOps Lab 03: Subnet Ping Sweep & Network Discovery

### \=======================================================

### Define the target network base (change this to match your local subnet)

SUBNET="192.168.1"

echo "Starting network discovery sweep on subnet: $SUBNET.0/24..."  
echo "--------------------------------------------------------"

### Loop through host IP addresses 1 to 10

for host in {1..255}; do  
TARGET\_IP="SUBNET.host"

\# Send 1 single ping packet with a 1-second timeout limit  
ping -c 1 -W 1 "$TARGET\_IP" > /dev/null 2>&1

\# Check the return exit status code of the ping command  
if \[ $? -eq 0 \]; then  
echo "\[ONLINE\] Machine found at: $TARGET\_IP"  
else  
echo "\[OFFLINE\] No response from: $TARGET\_IP"  
fi  
done

echo "--------------------------------------------------------"  
echo "Network sweep completed."