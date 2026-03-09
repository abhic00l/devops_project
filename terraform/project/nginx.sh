#!/bin/bash


sudo apt update
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx


echo "<h1> This is my project in teraform, feeling great learning this</h1>" > ~/var/www/html/index.html