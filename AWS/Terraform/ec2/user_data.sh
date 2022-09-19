#! /bin/bash
sudo yum update -y
cd /var
sudo yum install httpd -y
sudo service httpd start
cd www/html
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip
sudo unzip pro.zip
sudo mv pro-html/* .
sudo rm -rf pro*