
#!/bin/bash
#update 
yum update --exclude kernel

## install tools
yum install -y nano git unzip screen 

##install apache 
yum install -y httpd httpd-devel httpd-tools

## wibe directory 
rm -rf /var/www/html

## make symbolic link to document apache server
ln -s vagrant /var/www/html

## get index from repo 
sudo -u vagrant wget -q https://raw.githubusercontent.com/Elnsor/vagrant-one/refs/heads/main/files/index.html
systemctl start httpd

