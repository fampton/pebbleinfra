#!/bin/bash

# Path to the IP address file
IP_FILE="/home/admin/webapp_ip.txt"

# Read the IP address from the file
IP_ADDRESS=$(cat "$IP_FILE")

# SSH command with the user 'ubuntu' and the identity file
ssh -i /home/admin/pebble-key.pem ubuntu@"$IP_ADDRESS"

