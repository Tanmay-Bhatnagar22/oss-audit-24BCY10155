#!/bin/bash

# Script 3: Environment Auditor
# This script reviews key directories and checks for virtual environments.

echo "Open Source Audit — Tanmay"

echo "===== Directory Audit ====="

for dir in "$HOME" "."; do
    echo
    echo "Directory: $dir"
    ls -ld "$dir" 2>/dev/null || echo "N/A - Unable to access $dir"
done

echo
echo "===== Virtual Environment Check ====="
venv_found="no"

for venv_dir in ".venv" "venv" "env" "$HOME/.venv" "$HOME/venv" "$HOME/env"; do
    if [ -d "$venv_dir" ]; then
        echo "Found virtual environment directory: $venv_dir"
        ls -ld "$venv_dir" 2>/dev/null || echo "N/A"
        venv_found="yes"
    fi
done

if [ "$venv_found" = "no" ]; then
    echo "No virtual environment directory found in common locations."
fi
