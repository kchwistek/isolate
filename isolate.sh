#!/bin/bash

# Reset UFW to default settings
sudo ufw reset

# Set default policies
sudo ufw default allow incoming
sudo ufw default deny outgoing

# Allow incoming traffic for established and related connections
# sudo ufw allow in on any from any to any

# Allow outgoing DNS queries
sudo ufw allow out 53/tcp
sudo ufw allow out 53/udp

# Allow outgoing NTP
sudo ufw allow out 123/tcp
sudo ufw allow out 123/udp

# Allow outgoing HTTP and HTTPS queries
sudo ufw allow out 80/tcp
sudo ufw allow out 443/tcp

# Allow all incoming traffic on the loopback interface
sudo ufw allow in on lo

# Allow outgoing traffic for established connections on the loopback interface
sudo ufw allow out on lo

# Enable UFW logging
sudo ufw logging on

# Enable UFW
sudo ufw enable

echo "UFW rules set: restrictive policy."

