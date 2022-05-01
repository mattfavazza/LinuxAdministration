#!/bin/bash
#script to see failed access attempts. Meant to be ran with cron
#also outputs at /SCRIPTS/SECURITY with a .txt file

echo "last ran" >> accessattmpts.txt
date >> accessattmpts.txt
echo "--------------------------------" >> accessattmpts.txt
#adds date

sudo grep "Failed password" /var/log/secure | grep "from" >> accessattmpts.txt
#searches for failed password in auth.log and refines the search to show attempts "from [IP]"

