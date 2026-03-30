# Python Environment Inspector — Open Source Analysis & System Audit Toolkit

## Description
This project is an shell scripting toolkit focused on Python environment inspection and basic system auditing. It uses open-source Python tooling and Bash scripts to collect useful details from the system, inspect packages, audit directories, analyze logs, and generate a short project manifest.

## Student Details
- Name: Tanmay Bhatnagar
- Roll Number: 24BCY10155
- Course: Open Source Software

## Project Files
- script1_system_identity.sh  
  Displays logged-in user, date/time, uptime, Python version, and pip version.

- script2_python_inspector.sh  
  Checks Python installation, prints version, lists installed packages, and describes common packages (numpy, flask, django).

- script3_env_auditor.sh  
  Audits the home and current directories, showing permissions/ownership, and checks for virtual environment folders.

- script4_log_analyzer.sh  
  Accepts a log file and optional keyword (default: error), counts matches, and shows last 5 matching lines.

- script5_manifest_generator.sh  
  Asks three questions using read, generates a short paragraph, saves it to a text file, and displays the content.

## How to Run
1. Open terminal in the project folder.
2. Make all scripts executable:

  chmod +x script1_system_identity.sh script2_python_inspector.sh script3_env_auditor.sh script4_log_analyzer.sh script5_manifest_generator.sh

3. Run each script:

  ./script1_system_identity.sh
  ./script2_python_inspector.sh
  ./script3_env_auditor.sh
  ./script4_log_analyzer.sh sample.log
  ./script4_log_analyzer.sh sample.log warning
  ./script5_manifest_generator.sh

## Example Commands
  # Create a sample log file
  printf "info: started\nerror: failed to connect\nwarning: low memory\nerror: retry\n" > sample.log

  # Analyze default keyword (error)
  ./script4_log_analyzer.sh sample.log

  # Analyze custom keyword
  ./script4_log_analyzer.sh sample.log warning
