#!/bin/bash

# Script 5: Manifest Generator
# This script collects user input and writes a short manifest paragraph.

echo "Open Source Audit — Tanmay"

echo "===== Project Manifest Generator ====="
read -r -p "Enter your name: " student_name
read -r -p "Enter your course/class: " course_name
read -r -p "Enter your project goal in one sentence: " project_goal

output_file="manifest_output.txt"

{
    echo "Project Manifest"
    echo "----------------"
    echo "$student_name from $course_name is working on the Python Environment Inspector project."
    echo "The main goal of this project is: $project_goal"
} > "$output_file"

echo
echo "Manifest saved to: $output_file"
echo "File content:"
cat "$output_file" 2>/dev/null || echo "N/A"
