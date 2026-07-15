#!/bin/bash

### =======================================================

### DevOps Lab 02: Automated Service Monitoring and Recovery

### =======================================================

### Define the service we want to monitor (e.g., cron daemon, nginx, ssh)

SERVICE="cron"

echo "Checking the status of the process: $SERVICE..."

### Check if the process is running using systemctl

if systemctl is-active --quiet "$SERVICE"; then  
echo "[OK] $SERVICE is running smoothly."  
else  
echo "[WARNING] $SERVICE is stopped! Attempting automated recovery..."

# Attempt to restart the service (requires sudo/root permissions)  
sudo systemctl start "$SERVICE"

# Verify if recovery was successful  
if systemctl is-active --quiet "$SERVICE"; then  
echo "[SUCCESS] $SERVICE was successfully restarted."  
else  
echo "[CRITICAL] Automated recovery failed for $SERVICE. Human intervention needed!"  
fi  
fi
