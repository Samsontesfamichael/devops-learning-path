#!/usr/bin/env bash
set -euo pipefail

### ========================================
### DevOps Lab 03: Subnet Ping Sweep & Network Discovery
### ========================================

# Define the target network base (change this to match your local subnet)
SUBNET="192.168.1"

echo "Starting network discovery sweep on subnet: ${SUBNET}.0/24..."
echo "--------------------------------------------------------"

# Loop through host IP addresses 1 to 255
for host in {1..255}; do
	TARGET_IP="${SUBNET}.${host}"

	# Send 1 single ping packet with a 1-second timeout
	if ping -c 1 -W 1 "$TARGET_IP" > /dev/null 2>&1; then
		echo "[ONLINE] Machine found at: $TARGET_IP"
	else
		echo "[OFFLINE] No response from: $TARGET_IP"
	fi
done

echo "--------------------------------------------------------"
echo "Network sweep completed."