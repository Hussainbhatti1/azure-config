#!/bin/bash

# Update system packages
sudo apt update -y

# Install Nginx Web Server
sudo apt install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a sample HTML file for testing
echo "<h1>Welcome to Ubuntu VM - Configured via CI/CD Pipeline</h1>" | sudo tee /var/www/html/index.html

# Allow HTTP traffic (if firewall is enabled)
sudo ufw allow 'Nginx HTTP'

# Confirm installation
nginx -v
