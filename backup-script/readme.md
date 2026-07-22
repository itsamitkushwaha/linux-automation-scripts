# Backup Script

A Bash script that creates a compressed backup (`.tar.gz`) of a user-specified directory. The script verifies the source directory, creates the backup destination if needed, and records the backup status in a log file.

---

## Features

- Takes the source directory as user input.
- Verifies that the source directory exists.
- Creates the backup directory automatically if it doesn't exist.
- Compresses the source directory into a `.tar.gz` archive.
- Generates a unique backup filename using the current date and time.
- Logs successful and failed backup operations.
- Displays clear success or error messages.

---

## Project Structure

```text
backup-script/
├── backup_script.sh
├── source-files/
│   ├── file1.txt
│   ├── file2.txt
│   └── notes.txt
├── backups/
├── logs/
│   └── backup.log
└── README.md
```

---

## Prerequisites

- Linux or WSL (Windows Subsystem for Linux)
- Bash Shell
- `tar` utility

---

## Commands Used

| Command | Purpose |
|---------|---------|
| `read` | Accept user input |
| `echo` | Display messages |
| `date` | Generate timestamps |
| `mkdir -p` | Create directories if they don't exist |
| `tar -czf` | Create a compressed archive |
| `if` | Perform conditional checks |
| `exit` | Exit the script with a status code |

---

## How to Run

Make the script executable:

```bash
chmod +x backup_script.sh
```

Run the script:

```bash
./backup_script.sh
```

When prompted, enter the directory you want to back up.

Example:

```text
Enter the folder you want to backup:
source-files
```

---

## Example Output

```text
==================================
Starting Backup...
==================================

Backup completed successfully!

Backup saved as:
../backups/backup-2026-07-22_11-45-21.tar.gz
```

---

## Verify the Backup

List the backup files:

```bash
ls ../backups
```

View the contents of the archive without extracting it:

```bash
tar -tzf ../backups/backup-2026-07-22_11-45-21.tar.gz
```

Extract the backup:

```bash
tar -xzf ../backups/backup-2026-07-22_11-45-21.tar.gz
```

---

## Log File

Every execution is recorded in:

```text
logs/backup.log
```

Example:

```text
Tue Jul 22 11:45:21 IST 2026: Backup of source-files completed successfully.
Tue Jul 22 12:10:08 IST 2026: Backup of documents failed.
```

---

## Error Handling

The script checks for the following conditions:

- Source directory does not exist.
- Backup creation failure.
- Logs every successful and failed backup attempt.

---

## Learning Outcomes

This project demonstrates the following Bash scripting concepts:

- Variables
- User input using `read`
- Command substitution (`$(...)`)
- Conditional statements (`if`)
- Directory validation (`-d`)
- Creating directories with `mkdir -p`
- Creating compressed archives using `tar`
- Logging using output redirection (`>>`)
- Exit status checking (`$?`)
- File and directory management

---

