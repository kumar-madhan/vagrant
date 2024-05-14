#!/bin/bash

# Install necessary packages
sudo yum update -y
sudo yum install wget curl unzip net-tools firewalld -y
sudo yum install epel-release -y

# Example: Install Apache HTTP server
sudo yum install httpd -y

# Start and enable services
sudo systemctl start httpd
sudo systemctl enable httpd

# Example: Configure firewall for HTTP
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --reload

# Example: Create a sample index.html file
echo "<html><head><title>Welcome to My Website</title></head><body><h1>Hello, World!</h1></body></html>" | sudo tee /var/www/html/index.html > /dev/null

# Example: Ensure Apache has proper permissions
sudo chown -R apache:apache /var/www/html/
