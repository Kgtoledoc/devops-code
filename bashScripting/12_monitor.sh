#!/bin/bash

echo "##############################################"
date
#ls /var/run/httpd/httpd.pid &> /dev/null

# another solution is use if [ -f /var/run/httpd/httpd.pid ]

if [ -f /var/run/httpd/httpd.pid ]
then
  echo "Httpd Process is running"
else
  echo "Httpd Process is NOT running"
  echo "Starting the process"
  systemctl start httpd
  if [ $? -eq 0 ]
  then
    echo "Process started Successfully"
  else
    echo "Process Starting Failed. Contact the admin"
  fi
fi