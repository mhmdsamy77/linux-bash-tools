
# Linux System Monitoring

A Bash script to monitor CPU, memory, disk usage, and system uptime on Linux.

## Features

- Displays the system hostname.
- Monitors CPU usage.
- Monitors memory usage.
- Checks disk usage of the root filesystem.
- Displays system uptime.

## Requirements

- Linux operating system.
- Bash shell.
- Standard Linux utilities: `awk`, `free`, `df`, and `uptime`.

## Project Structure

```text
linux-system-monitoring/
├── scripts/
│   └── system_monitor.sh
├── README.md
└── LICENSE
```

## How to Run

Clone the repository:

```bash
git clone git@github.com:mhmdsamy77/linux-system-monitoring.git
```

Navigate to the project directory:

```bash
cd linux-system-monitoring
```

Give the script execution permission:

```bash
chmod +x scripts/system_monitor.sh
```

Run the script:

```bash
./scripts/system_monitor.sh
```

## Technologies Used

- Linux
- Bash
- Git
- GitHub

