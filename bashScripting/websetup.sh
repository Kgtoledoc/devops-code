#!/bin/bash
# Installing dependencies
echo "#################################"
echo " Installing Packages"
echo "#################################"
sudo yum install wget unzip httpd -y


echo "#################################"
echo "Start and Enable HTTPD service"
echo "#################################"
sudo systemctl start httpd
sudo systemctl enable httpd

# Creating temp files and updating html files
echo "#################################"
echo "Seting the HTTPD"
echo "#################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip
unzip 2128_tween_agency.zip
cp -r 2128_tween_agency/* /var/www/html/

# Restarting the HTTPD Service
echo "#################################"
echo "Restarting the HTTPD Service"
echo "#################################"
sudo systemctl restart httpd

# Cleaning files
echo "#################################"
echo "Cleaning files"
echo "#################################"
rm -rf /tmp/webfiles
