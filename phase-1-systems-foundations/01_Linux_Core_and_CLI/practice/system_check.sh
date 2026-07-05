#!/bin/bash 

### \==========================================

### DevOps Training: Module 01 System Checker

### Target: Automate baseline server health reporting

### \==========================================

echo "========================================"  
echo " SERVER HEALTH REPORT "  
echo "========================================"  
echo "Date/Time : $(date)"  
echo "Server Run Time: $(uptime -p)"  
echo "========================================" 

### 1\. Check Disk Space Usage

echo ""  
echo "\[1\] Checking Hard Drive Disk Space..."  
df -h | grep -E '^/dev/' || df -h | head -n 2 

### 2\. Check RAM Memory Usage

echo ""  
echo "\[2\] Checking RAM Memory (in MB)..."  
free -m 

echo "========================================"  
echo "Report Generated Successfully."  
echo "========================================"