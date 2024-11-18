#!/bin/bash

echo "=== DS10 Server Health Check ==="
echo "Time: $(date)"
echo

echo "=== System Load ==="
uptime
echo

echo "=== Memory Usage ==="
free -h
echo

echo "=== Disk Usage ==="
df -h
echo

echo "=== System Services ==="
systemctl list-units --type=service --state=running
