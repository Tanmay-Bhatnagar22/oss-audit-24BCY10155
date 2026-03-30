#!/bin/bash

# Script 4: Log Analyzer
# Usage: ./script4_log_analyzer.sh <log_file> [keyword]

echo "Open Source Audit — Tanmay"

log_file="$1"
keyword="${2:-error}"

if [ -z "$log_file" ]; then
    echo "Usage: $0 <log_file> [keyword]"
    exit 1
fi

if [ ! -f "$log_file" ]; then
    echo "Log file not found: $log_file"
    exit 1
fi

echo "Analyzing file: $log_file"
echo "Keyword: $keyword"
echo

counter=0

# Count matching lines using a while loop.
while IFS= read -r line; do
    counter=$((counter + 1))
done < <(grep -i "$keyword" "$log_file" 2>/dev/null)

echo "Total matches: $counter"
echo

echo "Last 5 matching lines:"
if command -v grep >/dev/null 2>&1; then
    grep -i "$keyword" "$log_file" 2>/dev/null | tail -n 5 || echo "N/A"
else
    echo "grep command is not available."
fi
