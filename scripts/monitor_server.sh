#!/bin/bash

# Log file location
LOG_FILE="/home/oscarwp/server_management/logs/server_monitor.log"
mkdir -p "$(dirname "$LOG_FILE")"

# Get current timestamp
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Check system uptime
uptime_info=$(uptime -p)

# Check CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')%

# Check memory usage
memory_info=$(free -h | grep Mem)
memory_used=$(echo $memory_info | awk '{print $3}')
memory_total=$(echo $memory_info | awk '{print $2}')

# Log the information
echo "[$timestamp]" >> "$LOG_FILE"
echo "Uptime: $uptime_info" >> "$LOG_FILE"
echo "CPU Usage: $cpu_usage" >> "$LOG_FILE"
echo "Memory Usage: $memory_used / $memory_total" >> "$LOG_FILE"
echo "----------------------------------------" >> "$LOG_FILE"

# Output current status
echo "Server Status Check"
echo "-----------------"
echo "Uptime: $uptime_info"
echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_used / $memory_total"
