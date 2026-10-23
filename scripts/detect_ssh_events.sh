#!/bin/bash

LOG_FILE="${1:-reports/ssh-authentication-events-clean.txt}"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file not found: $LOG_FILE"
    exit 1
fi

echo "===== SOC L1 SSH Event Triage ====="
echo "Log source: $LOG_FILE"
echo

echo "[1] Invalid username events:"
grep -Ec ': Invalid user ' "$LOG_FILE"

echo
echo "[2] Failed SSH authentication events:"
grep -Eic 'Failed password' "$LOG_FILE"

echo
echo "[3] SSH connection closures:"
grep -Eic 'Connection closed' "$LOG_FILE"

echo
echo "[4] Event details:"
cat "$LOG_FILE"

echo
echo "===== Triage Complete ====="
