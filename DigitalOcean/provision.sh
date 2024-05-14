#!/bin/bash

# Update package repositories and install necessary packages
sudo apt-get update
sudo apt-get install -y wget curl unzip

# Example: Install Nginx
sudo apt-get install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Example: Configure firewall for HTTP (Port 80)
sudo ufw allow 'Nginx Full'

# Example: Create a sample index.html file
echo "<html><head><title>Welcome to My Website</title></head><body><h1>Hello, World!</h1></body></html>" | sudo tee /var/www/html/index.html > /dev/null

# Example: Ensure Nginx has proper permissions
sudo chown -R www-data:www-data /var/www/html/
