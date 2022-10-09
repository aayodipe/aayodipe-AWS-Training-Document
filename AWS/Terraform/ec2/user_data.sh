#! /bin/bash
sudo yum update -y
cd /var
sudo yum install httpd -y
sudo service httpd start
chkconfig httpd on
sudo service httpd enable
cd www/html
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip
sudo unzip pro.zip
sudo mv pro-html/* .
sudo rm -rf pro*



#!/bin/bash
cd /tmp
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent

#!/bin/bash
sudo su -
sudo yum update -y
cd /tmp
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent
cd /var
sudo yum install httpd -y
sudo service httpd start
chkconfig httpd on
sudo service httpd enable
cd www/html
sudo echo "This is MWeb-1" > index.html
sudo echo "This is order page of MWeb-1" > order.html


Path base routin