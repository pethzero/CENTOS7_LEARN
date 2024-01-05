#!/bin/bash

#Destination Filde
destination_dir="/foldertest/"

# Get current date and time in the desired format (YYYYMMDDHHMMSS)
current_datetime=$(date +"%Y%m%d%H%M%S")

# Create the log file name with the current_datetime
log_filename="${destination_dir}log_${current_datetime}.txt"

# Append content to the log file
echo "Hello World $current_datetime" >> "$log_filename"
echo "Success"
