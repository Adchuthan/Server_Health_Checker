# 🖥️ Server Health Checker

A simple Bash script that monitors the health of a Linux server by displaying important system metrics. This project is designed to help beginners learn Linux commands, shell scripting, and basic DevOps monitoring concepts.

## 📌 Features

* Displays total CPU usage
* Displays memory statistics

  * Total memory
  * Used memory
  * Available memory
  * Memory usage percentage
* Displays disk statistics

  * Total disk space
  * Used disk space
  * Free disk space
  * Disk usage percentage
* Shows the top 5 processes by CPU usage
* Shows the top 5 processes by memory usage

## 🛠️ Technologies Used

* Bash
* Linux
* `vmstat`
* `free`
* `df`
* `ps`
* `awk`

## 📂 Project Structure

```text
server-health-checker/
├── server-status.sh
└── README.md
```

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/<your-github-username>/server-health-checker.git
cd server-health-checker
```

### Make the script executable

```bash
chmod +x server-status.sh
```

### Run the script

```bash
./server-status.sh
```

## 📊 Example Output

```text
========== SERVER STATUS ==========

CPU Usage
  Usage : 6%

Memory
  Total      : 7793 MB
  Used       : 2145 MB
  Free       : 5648 MB
  Usage      : 27.52%

Disk
  Total      : 97G
  Used       : 41G
  Free       : 52G
  Usage      : 45%

Top 5 Processes by CPU Usage

PID     USER     %CPU COMMAND
1234    user     35.2 chrome
2345    user     15.8 code
3456    root      8.7 docker
4567    user      4.5 python3
5678    root      2.3 systemd

Top 5 Processes by Memory Usage

PID     USER     %MEM COMMAND
1234    user     12.4 chrome
2345    user      8.1 code
3456    root      4.9 docker
4567    user      3.7 python3
5678    root      2.1 systemd
```

## 📚 Commands Used

| Command  | Purpose                           |
| -------- | --------------------------------- |
| `vmstat` | Monitor CPU usage                 |
| `free`   | Display memory information        |
| `df`     | Display disk usage                |
| `ps`     | List running processes            |
| `awk`    | Process and format command output |

## 🎯 Learning Objectives

This project helped me learn:

* Bash scripting
* Linux system monitoring
* Working with shell variables
* Command substitution
* Using `awk` for calculations and formatting
* Process monitoring with `ps`
* CPU monitoring with `vmstat`
* Memory monitoring with `free`
* Disk monitoring with `df`

## 🔮 Future Improvements

* Add system uptime
* Display system load average
* Add network usage statistics
* Add disk and memory usage alerts
* Generate log files
* Send email notifications
* Add colored terminal output
* Schedule automatic execution using cron
* Export results to a log file

## 👨‍💻 Author

**Adchuthan J.R.**

This project is part of my DevOps learning journey and focuses on building practical Linux monitoring and automation skills.
