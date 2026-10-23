#!/bin/bash

LOG_FILE="${1:-reports/authentication-filtered.txt}"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file not found: $LOG_FILE"
    exit 1
fi

echo "===== SOC L1 Authentication Log Triage ====="
echo "Log source: $LOG_FILE"
echo

echo "[1] Authentication failure events:"
grep -Eic 'authentication failure|incorrect password|auth could not identify password|conversation failed' "$LOG_FILE"

echo
echo "[2] Successful root sessions:"
grep -Ec 'session opened for user root' "$LOG_FILE"

echo
echo "[3] Failure details:"
grep -Ei 'authentication failure|incorrect password|auth could not identify password|conversation failed' "$LOG_FILE" \
    | grep -v 'COMMAND=/usr/bin/grep'

echo
echo "===== Triage Complete ====="
