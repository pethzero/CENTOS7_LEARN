#!/bin/bash

source_file="/opt/firebird/TEST-INDUSTRIALLOGIC.FDB"
destination_dir="/root/Downloads/"

# Get current date and time in the desired format (YYYYMMDDHHMMSS)
current_datetime=$(date +"%Y%m%d%H%M%S")

# Create the new file name by appending the current date and time to the original file name
new_filename="${current_datetime}_test.fbk"

# Define the log file
log_file="${destination_dir}backup_log.txt"

# Run gbak to create a backup and redirect the output to the log file
gbak -b -v -user SYSDBA -password "masterkey" "$source_file" "${destination_dir}${new_filename}" >> "$log_file" 2>&1

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully. Log written to: $log_file"
else
  echo "Backup failed. Check the log file: $log_file"
fi
