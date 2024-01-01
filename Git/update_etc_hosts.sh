#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Specify the file containing host entries
hosts_file="hosts"

# Check if the file exists
if [ ! -f "$hosts_file" ]; then
  echo "Error: File $hosts_file not found."
  exit 1
fi

# Iterate through each line in the file and append to /etc/hosts
while IFS= read -r line; do
  # Split the line into host and IP using "=" as delimiter
  IFS='=' read -r -a host_entry <<< "$line"

  # Check if the line has the correct format
  if [ "${#host_entry[@]}" -eq 2 ]; then
    host="${host_entry[0]}"
    ip="${host_entry[1]}"

    # Append to /etc/hosts
    echo "$ip $host" >> /etc/hosts
    echo "Added $host with IP $ip to /etc/hosts"
  else
    echo "Error: Invalid format in line: $line"
  fi
done < "$hosts_file"

echo "Hosts added successfully."

