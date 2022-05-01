#!/bin/bash
#script to monitor users. Meant to be ran with cronjob
#all output is directed to a text file

echo "Last Ran" >> activeusrs.txt
date >> activeusrs.txt
echo " " >> activeusrs.txt
#creates a header with the date


echo "Active Users" >> activeusrs.txt
w >> activeusrs.txt
echo " " >> activeusrs.txt
#lists all active users


echo "Last 20 Successful Logins" >> activeusrs.txt
last -20 >> activeusrs.txt
echo " " >> activeusrs.txt
#prints a list of the last 20 successful logins


echo "Activity" >> activeusrs.txt
ps -ef | sed /root/d | sed /www-data/d >> activeusrs.txt
echo " " >> activeusrs.txt
#lists active users and their processes. Removes extra lines for root/apache operations


cat activeusrs.txt
