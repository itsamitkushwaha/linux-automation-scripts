# Log Cleanup Script

## Description

This Bash script automatically deletes `.log` files older than a specified number of days.

---

## Features

- Deletes old log files
- Checks if the log directory exists
- Uses the `find` command
- Easy to modify the retention period

---

## Requirements

- Ubuntu/Linux
- Bash

---

## Project Structure

```text
log-cleanup/
├── sample-logs/
│   ├── app.log
│   ├── error.log
│   └── nginx.log
├── log_cleanup.sh
└── README.md
```

---

## How to Run

Make the script executable:

```bash
chmod +x log_cleanup.sh
```

Run the script:

```bash
./log_cleanup.sh
```

---

## Testing

To test the script without waiting 7 days, make a log file appear 10 days old:

```bash
touch -d "10 days ago" sample-logs/app.log
```

Check the modification time:

```bash
stat sample-logs/app.log
```

Run the script:

```bash
./log_cleanup.sh
```

---

## Commands Used

- `echo`
- `if`
- `find`
- `touch`
- `stat`
- `exit`

---

## Note

The `touch -d "10 days ago"` command is **only for testing**. It changes the file's modification time so the cleanup script can detect it as an old log file.