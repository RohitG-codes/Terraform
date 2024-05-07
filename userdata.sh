#!/bin/sh
sudo apt update 
sudo apt install -y apache2
sudo apt upgrade -y
echo "<html><h1 style=\"text-align: center; font-size: 20px; padding: 10px 0px;\">This Instance is created using Terraform.</h1></html>" > /var/www/html/index.html
