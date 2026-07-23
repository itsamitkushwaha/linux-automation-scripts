# Disk Usage Monitor

A Bash script that monitors the disk usage of the Linux system and alerts the user when disk usage exceeds a specified threshold. The script also records each execution in a log file for future reference.

---

## Features

- Monitors the current disk usage of the root (`/`) filesystem.
- Configurable disk usage threshold.
- Displays the current disk usage percentage.
- Warns the user when the threshold is exceeded.
- Creates the log directory automatically if it doesn't exist.
- Records all monitoring results in a log file.
- Simple and lightweight Bash script suitable for Linux system administration tasks.

---

## Project Structure

```text
disk-usage-monitor/
├── disk_usage_monitor.sh
├── logs/
│   └── disk_usage.log
└── README.md
```

---

## Prerequisites

- Linux or WSL (Windows Subsystem for Linux)
- Bash Shell
- Standard Linux utilities:
  - `df`
  - `awk`
  - `tr`

---

## Commands Used

| Command | Purpose |
|---------|---------|
| `df` | Displays disk space usage |
| `awk` | Extracts specific columns from command output |
| `tr` | Removes unwanted characters |
| `echo` | Displays messages |
| `mkdir -p` | Creates directories if they don't exist |
| `date` | Generates timestamps for logging |
| `if` | Performs conditional checks |

---

## How the Script Works

1. Sets a disk usage threshold (default: **80%**).
2. Creates the log directory if it doesn't exist.
3. Retrieves the current disk usage of the root filesystem.
4. Extracts only the usage percentage.
5. Removes the `%` symbol for numeric comparison.
6. Compares the current usage with the threshold.
7. Displays a warning if the threshold is exceeded.
8. Saves the result to a log file.

---

## How to Run

Make the script executable:

```bash
chmod +x disk_usage_monitor.sh
```

Run the script:

```bash
./disk_usage_monitor.sh
```

---

## Example Output

### Normal Disk Usage

```text
==================================
Disk Usage Monitor
==================================

Current Disk Usage: 42%
Disk usage is normal.
```

### High Disk Usage

```text
==================================
Disk Usage Monitor
==================================

Current Disk Usage: 91%
Warning! Disk usage is above 80%.
```

---

## Log File

The script stores every execution in:

```text
logs/disk_usage.log
```

Example:

```text
Wed Jul 23 11:42:55 IST 2026: Disk usage is 42%.
Wed Jul 23 12:15:21 IST 2026: Disk usage reached 91%.
```

---

## Understanding the Commands

### Check Disk Usage

```bash
df -h
```

Displays disk usage in a human-readable format.

---

### Extract Disk Usage Percentage

```bash
df / | awk 'NR==2 {print $5}'
```

Example output:

```text
42%
```

---

### Remove the Percentage Symbol

```bash
tr -d '%'
```

Converts:

```text
42%
```

into:

```text
42
```

which allows numeric comparison in Bash.

---

## Learning Outcomes

This project demonstrates the following Bash scripting concepts:

- Variables
- Command substitution (`$(...)`)
- Conditional statements (`if`)
- Numeric comparison (`-ge`)
- System monitoring using `df`
- Text processing with `awk`
- Character manipulation with `tr`
- Logging using output redirection (`>>`)
- Directory creation using `mkdir -p`

---
