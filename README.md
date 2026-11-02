
# Linux Bash Tools

A collection of Bash scripts for Linux system administration tasks.

## Scripts

### 1. System Monitoring

File: `scripts/system_monitor.sh`

Monitors basic Linux system resources:

- Hostname
- CPU usage
- Memory usage
- Disk usage
- System uptime

### 2. Backup Script

File: `scripts/backup.sh`

Creates compressed backups of specified directories.

Features:

- Accepts a directory path as input.
- Checks if the directory exists.
- Creates a backup directory automatically.
- Generates compressed `.tar.gz` backup files.
- Adds a timestamp to each backup filename.

## Requirements

- Linux operating system
- Bash shell
- Standard Linux utilities: `awk`, `free`, `df`, `uptime`, `tar`, and `date`
- Git

## How to Run

### 1. Clone the Repository

```bash
git clone git@github.com:mhmdsamy77/linux-bash-tools.git
```

### 2. Navigate to the Project Directory

```bash
cd linux-bash-tools
```

### 3. Give Execution Permissions

```bash
chmod +x scripts/system_monitor.sh
chmod +x scripts/backup.sh
```

### 4. Run the System Monitoring Script

```bash
./scripts/system_monitor.sh
```

### 5. Run the Backup Script

Replace `/path/to/directory` with the directory you want to back up.

```bash
./scripts/backup.sh /path/to/directory
```

Backups are saved in:

```text
~/backups/
```

## Project Structure

```text
linux-bash-tools/
├── scripts/
│   ├── system_monitor.sh
│   └── backup.sh
├── README.md
└── LICENSE
```

## Technologies Used

- Linux
- Bash Scripting
- Git
- GitHub

