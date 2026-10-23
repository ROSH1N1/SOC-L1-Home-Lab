# SOC L1 Home Lab: Linux Log Analysis and Detection

## Overview
A beginner cybersecurity project focused on Linux authentication log analysis, Bash-based detection, and basic incident investigation. The lab uses controlled local tests to generate events and examines the resulting logs.

## Objectives
- Inspect Linux authentication and system logs.
- Identify authentication failures and suspicious login indicators.
- Automate basic event counting using Bash scripts.
- Document evidence, analysis, and recommended actions.

## Tools and Technologies
- Kali Linux
- Bash scripting
- Linux authentication logs (`/var/log/auth.log`)
- SSH (`sshd`)
- Linux command-line utilities (`grep`, `cat`, `systemctl`)

## Lab Activities

### 1. Authentication Log Analysis
- Filtered authentication logs for failed authentication and sudo-related events.
- Reviewed PAM messages and root-session events.
- Recorded observations in reports.

### 2. Bash Authentication Detection
Script: `scripts/detect_auth_events.sh`

- Counts matching authentication failure log entries.
- Counts root-session log entries.
- Displays relevant event details for manual review.

### 3. SSH Authentication Investigation
Script: `scripts/detect_ssh_events.sh`

- Generated a controlled SSH test using a nonexistent username against localhost.
- Examined invalid-user, failed-password, and connection-closure events.
- Used a Bash script to count matching log events.
- Documented findings in `reports/ssh-investigation.md`.

## Key Finding
The SSH test generated three related log entries:
- One invalid-user event.
- One failed-password event.
- One connection-closure event.

The source address was `127.0.0.1`, the local loopback address. This was a controlled local test and is not evidence of an external attack.

## Project Structure
```text
SOC-L1-Home-Lab/
├── detection-notes/
├── reports/
├── screenshots/
├── scripts/
│   ├── detect_auth_events.sh
│   └── detect_ssh_events.sh
└── README.md


```

## Limitations
- This is a local learning lab, not a production SOC environment.
- Detection uses basic text matching rather than advanced event correlation.
- SIEM integration is not currently included.
- Findings require analyst review and context before assigning severity.

## Skills Practiced
- Linux authentication log analysis
- SSH authentication troubleshooting
- Bash scripting and event filtering
- Evidence collection and incident documentation
