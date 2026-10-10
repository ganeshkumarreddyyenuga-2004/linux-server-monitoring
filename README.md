# Linux Server Administration and Monitoring Automation

# Automated Linux Server Health Monitoring Using Bash Scripting

A beginner-friendly DevOps project that automates Linux server health monitoring using Bash scripts and Cron jobs. It collects system information, checks resource usage, monitors Nginx, and generates health reports.

# Project Information

| Detail | Description |
|---|---|
| Project Name | Linux Server Administration and Monitoring Automation |
| Author | Ganesh Kumar Reddy |
| Operating System | Ubuntu Linux |
| Scripting Language | Bash |
| Web Server | Nginx |
| Automation | Cron |
| Version Control | Git and GitHub |
| Project Type | Linux Administration / DevOps |

---

## 🛠️ Technologies Used

- Ubuntu Linux
- Bash Scripting
- Nginx Web Server
- Cron Jobs
- Git
- GitHub
  
## 📌 Project Overview

* Linux server administrators need to monitor system resources and ensure that important services are running correctly.
* This project simplifies that process by using Bash scripts to collect system information and generate health reports automatically.
* The monitoring script can be scheduled with Cron to execute every five minutes.

# Project Features

- 📊 Monitor server uptime.
- 🧠 Check memory usage.
- 💾 Monitor disk usage.
- ⚙️ Identify top CPU-consuming processes.
- 🌐 Check Nginx service status.
- 📝 Generate automated health reports.
- ⏰ Schedule health checks using Cron.
- 🚨 Check disk usage against a configured threshold.
- 
# Project Structure

linux-server-monitoring/
├── scripts/
│   ├── health_check.sh
│   └── disk_alert.sh
├── reports/
└── README.md

**Folder description:**

- `scripts/` — Contains the Bash monitoring scripts.
- `health_check.sh` — Collects server health information and generates a report.
- `disk_alert.sh` — Checks disk usage against a configured threshold.
- `reports/` — Stores generated health reports.
- `README.md` — Contains project documentation.

# Installation and Setup

sudo apt update     # Update Ubuntu Packages
sudo apt install nginx git curl cron -y  # Install Required Packages
git clone https://github.com/ganeshkumarreddyyenuga-2004/linux-server-monitoring.git   #Clone the Repository
cd linux-server-monitoring   # Navigate to the Project Directory

## ▶️ Execute the Monitoring Scripts

bash scripts/health_check.sh  #Run the Health Check Script (This script collects system information and generates a health report).

bash scripts/disk_alert.sh  #Run the Disk Alert Script (This script checks disk usage against the configured threshold).

##  Cron Job Automation
   Cron can automatically execute the health monitoring script every five minutes.

crontab -e  # Open the Crontab Editor

*/5 * * * * /bin/bash /home/ganesh/linux-server-monitoring/scripts/health_check.sh   # Add the Following Entry

sudo service cron status  # Verify the Cron Service

crontab -l  # Verify the Scheduled Job

**Note:** Update the script path if your project is stored in a different directory.

## 📊 Sample Health Report

The health report can include the following information:

| Monitoring Item | Description |
|---|---|
| Date and Time | When the report was generated |
| Hostname | System hostname |
| Uptime | How long the system has been running |
| Memory Usage | Current memory utilization |
| Disk Usage | Filesystem usage information |
| CPU Processes | Top CPU-consuming processes |
| Nginx Status | Nginx service status |

Reports are saved in the `reports/` directory.

## 🧰 Troubleshooting

### Problem 1: Permission Denied

bash scripts/health_check.sh   # Try running the script with Bash
chmod +x scripts/health_check.sh  # Alternatively, make the script executable:

### Problem 2: Nginx Is Not Running

sudo systemctl status nginx  # Check the service status
sudo systemctl start nginx  # Start Nginx if necessary

### Problem 3: Cron Job Is Not Running

sudo service cron status  #Check the Cron service
crontab -l  # Verify scheduled jobs

## 🎯 Learning Outcomes

Through this project, I practised:

- Linux command-line administration.
- Bash scripting and automation.
- Monitoring CPU, memory, and disk usage.
- Managing Nginx services.
- Scheduling recurring tasks with Cron.
- Generating automated system reports.
- Using Git and GitHub for version control.
- Troubleshooting Linux systems.

## 🚀 Future Enhancements

- Send email alerts when disk usage exceeds a threshold.
- Add CPU and memory threshold alerts.
- Integrate Prometheus and Grafana.
- Create a centralized monitoring dashboard.
- Deploy the monitoring solution on a cloud virtual machine.
- Automate installation using Ansible.

## 👨‍💻 Author

**Ganesh Kumar Reddy Yenuga**

Aspiring Linux / Cloud / DevOps Engineer\

⭐ If you find this project useful, consider starring the repository!
