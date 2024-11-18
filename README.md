# Task_2 Script for System Monitoring and Log Analysis
**Task 2: Bash and Python Scripts**
Objective
##### **Create two scripts for system health monitoring and log analysis.**
### **Script 1: System Health Monitoring**
**File: health_monitor.sh**

This Bash script monitors the health of a Linux system by tracking:
**CPU usage
Memory usage
Disk space
Running processes**

**If any metric exceeds predefined thresholds, an alert is logged to health.log.**

How to Run:
Make the script executable:
**chmod +x health_monitor.sh**
Run the script:
**./health_monitor.sh**

Check the logs:
**cat health.log**

### **Script 2: Log File Analyzer**
**File: log_analyzer.py**
This Python script analyzes web server logs and provides insights such as:
Most requested pages.
IP addresses with the most requests.
**How to Run:**
Place a sample web server log file (e.g., access.log) in the same directory.

Run the script:

**python3 log_analyzer.py**
**View the output in the console**

**Repository Structure**

```plaintext
├── health_monitor.sh        # Bash script for system health monitoring
├── log_analyzer.py          # Python script for log analysis
├── sample_logs/
│   └── access.log           # Sample web server log file
├── README.md                # Project documentation
```

**This project is licensed under the MIT License. See the LICENSE file for details.**

### **Steps to Upload:**
1. Save the above content as `README.md` in the root directory of your repository.
2. Commit and push the changes:
   ```bash
   git add README.md
   git commit -m "Add README for containerisation and scripts tasks"
   git push origin main
