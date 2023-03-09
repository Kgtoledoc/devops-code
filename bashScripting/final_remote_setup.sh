#!/bin/bash

USR='devops'

for host in $(cat remhosts.txt);
do
  echo "############################"
  echo "Connecting to $host"
  echo 
  scp multios_websetup.sh $USR@$host:/tmp
  echo "Executing remote files"
  ssh $USR@$host /tmp/multios_websetup.sh
  echo "############################"
done