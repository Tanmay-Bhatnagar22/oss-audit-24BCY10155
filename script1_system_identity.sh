#!/bin/bash

# Script 1: System Identity + Python Info
# This script prints basic system and Python details.

echo "Open Source Audit — Tanmay"

logged_user="$(whoami 2>/dev/null || echo "N/A")"
current_time="$(date "+%Y-%m-%d %H:%M:%S" 2>/dev/null || echo "N/A")"
uptime_info="$(uptime -p 2>/dev/null || uptime 2>/dev/null || echo "N/A")"

python_version="$(python3 --version 2>/dev/null || python --version 2>/dev/null || echo "N/A")"
pip_version="$(pip3 --version 2>/dev/null || pip --version 2>/dev/null || python3 -m pip --version 2>/dev/null || python -m pip --version 2>/dev/null || echo "N/A")"

echo "===== System Identity Report ====="
echo "Logged-in user : $logged_user"
echo "Date and time   : $current_time"
echo "Uptime          : $uptime_info"
echo
echo "===== Python Information ====="
echo "Python version  : $python_version"
echo "pip version     : $pip_version"
