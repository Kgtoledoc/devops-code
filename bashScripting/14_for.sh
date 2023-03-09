#!/bin/bash

MYUSERS="alpha beta gamma"
for usr in $MYUSERS
do
  useradd $usr
  id $usr
done