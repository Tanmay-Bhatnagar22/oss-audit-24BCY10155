#!/bin/bash

# Script 2: Python Package Inspector
# This script checks Python installation and inspects common packages.

echo "Open Source Audit — Tanmay"

if command -v python3 >/dev/null 2>&1; then
    PY_CMD="python3"
elif command -v python >/dev/null 2>&1; then
    PY_CMD="python"
else
    echo "Python is not installed or not available in PATH."
    exit 1
fi

echo "Python found: $PY_CMD"
echo "Version: $($PY_CMD --version 2>/dev/null || echo "N/A")"
echo

if command -v pip3 >/dev/null 2>&1; then
    PIP_CMD="pip3"
elif command -v pip >/dev/null 2>&1; then
    PIP_CMD="pip"
else
    PIP_CMD="$PY_CMD -m pip"
fi

echo "Installed packages:"
$PIP_CMD list 2>/dev/null || echo "Could not list packages (pip not available)."
echo

# Check selected packages and describe them using case.
for package in numpy flask django; do
    if $PIP_CMD list 2>/dev/null | grep -i "^$package[[:space:]]" >/dev/null 2>&1; then
        status="installed"
    else
        status="not installed"
    fi

    case "$package" in
        numpy)
            description="Numerical computing library"
            ;;
        flask)
            description="Lightweight web framework"
            ;;
        django)
            description="Full-featured web framework"
            ;;
        *)
            description="No description"
            ;;
    esac

    echo "$package: $status - $description"
done
