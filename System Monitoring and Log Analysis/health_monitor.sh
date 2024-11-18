#!/bin/bash

CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80

# Check CPU usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
if (( $(echo "$CPU > $CPU_THRESHOLD" | bc -l) )); then
  echo "High CPU usage: $CPU%" | tee -a health.log
fi

# Check Memory usage
MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
if (( $(echo "$MEM > $MEM_THRESHOLD" | bc -l) )); then
  echo "High Memory usage: $MEM%" | tee -a health.log
fi

# Check Disk usage
DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
if (( DISK > DISK_THRESHOLD )); then
  echo "High Disk usage: $DISK%" | tee -a health.log
fi

# Check running processes
PROCESSES=$(ps aux --sort=-%mem | head -n 5)
echo "Top processes consuming memory:" | tee -a health.log
echo "$PROCESSES" | tee -a health.log
