# Pebble Infrastructure

## Overview
This repository contains the Ansible code and supporting files necessary for setting up and managing the infrastructure for the Pebble web application.

## Accessing the Webapp EC2 Instance
1. After deploying via Ansible, a local file on the jump box (`ssh_to_webapp_ec2.sh`) allows SSH access to the webapp's EC2 instance. Security groups restrict direct SSH access to the web app's EC2 instance, so use the jump box for connection.

### Instructions
1. Connect to the jump box using the provided SSH key (`pebble-key.pem`). Ensure the key file permissions are set:
chmod 0400 pebble-key.pem ssh -i pebble-key.pem admin@44.222.203.113

2. To deploy the web application and its infrastructure, use the following command on the jump box:

make deploy

3. To connect to the deployed web application's EC2 instance, run:

./ssh_to_webapp_ec2.sh

### Additional Information - The webapp's IP can be found in `webapp_ip.txt` after the Ansible run completes.
