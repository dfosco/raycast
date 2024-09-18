#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Random usernames
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⚡
# @raycast.packageName random-username

# File containing the list of usernames
username_file="./usernames.txt"

# Check if the file exists
if [ ! -f "$username_file" ]; then
    echo "Error: $username_file not found."
    exit 1
fi

# Count the number of lines in the file
total_lines=$(wc -l < "$username_file")

# Generate a random number between 1 and the total number of lines
random_line=$((RANDOM % total_lines + 1))

# Get the username from the randomly selected line
random_username=$(sed "${random_line}q;d" "$username_file" | tr -d '\n')

# Copy the username to clipboard
echo -n "$random_username" | pbcopy

echo "Random username '$random_username' has been copied to your clipboard."
