#!/bin/bash

# Variable declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2128_tween_agency.zip"
ART_NAME="2128_tween_agency"
TEMPDIR="/tmp/webfiles"

# Installing dependencies
echo "#################################"
echo " Installing Packages"
echo "#################################"
sudo yum install $PACKAGE -y


echo "#################################"
echo "Start and Enable HTTPD service"
echo "#################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC

# Creating temp files and updating html files
echo "#################################"
echo "Seting the HTTPD"
echo "#################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL
unzip $ART_NAME.zip
cp -r $ART_NAME/* /var/www/html/

# Restarting the HTTPD Service
echo "#################################"
echo "Restarting the HTTPD Service"
echo "#################################"
sudo systemctl restart $SVC

# Cleaning files
echo "#################################"
echo "Cleaning files"
echo "#################################"
rm -rf $TEMPDIR
