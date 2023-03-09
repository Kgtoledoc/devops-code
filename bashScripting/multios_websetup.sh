#!/bin/bash

# Variable declaration
URL="https://www.tooplate.com/zip-templates/2128_tween_agency.zip"
ART_NAME="2128_tween_agency"
TEMPDIR="/tmp/webfiles"

yum -help
if [ $? -eq 0 ]   # Centos
then
  echo "CentOs OS"
  hostname
  PACKAGE="httpd wget unzip"
  SVC="httpd"
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
  sudo cp -r $ART_NAME/* /var/www/html/

  # Restarting the HTTPD Service
  echo "#################################"
  echo "Restarting the Apache2 Service"
  echo "#################################"
  sudo systemctl restart $SVC

  # Cleaning files
  echo "#################################"
  echo "Cleaning files"
  echo "#################################"
  rm -rf $TEMPDIR

else  # Ubuntu
  echo "Ubuntu OS"
  hostname
  PACKAGE="apache2 wget unzip"
  SVC="apache2"
    # Installing dependencies
  echo "#################################"
  echo " Installing Packages"
  echo "#################################"
  sudo apt install $PACKAGE -y


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
  sudo cp -r $ART_NAME/* /var/www/html/

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
fi


