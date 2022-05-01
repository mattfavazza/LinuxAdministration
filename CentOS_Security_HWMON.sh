#!/bin/bash
#Script to monitor system preformance


echo "Hardware Monitor"
echo "Last Ran"
date
echo " "
#Creates a header for the text file


echo "Uptime"
uptime
echo " "
echo "Users"
who
echo " "
#shows uptime and whos logged into the server

echo "Running NMON"
nmon -fF nmondump -s 60 -c 30
echo "Sorting Data..."
sleep 15
sort nmondump >> nmonsort.csv
sleep 15
echo "Data Sorted"
rm nmondump
#runs nmon and saves the output to the file 'nmondump' do
#sorts the file into a new file called 'nmonsort.csv' and removes the old 'nmondump'

echo " "
echo "CPU"
grep CPU_ALL nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Disk"
grep DISKBSIZE nmonsort.csv | sed 's/, */,    /g'
grep DISKBUSY nmonsort.csv | sed 's/, */,    /g'
grep DISKREAD nmonsort.csv | sed 's/, */,    /g'
grep DISKWRITE nmonsort.csv | sed 's/, */,    /g'
grep DISKXFER nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Jsfile"
grep JFSFILE nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Memory"
grep MEM nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Network"
grep NET nmonsort.csv | sed 's/, */,    /g'
grep NETPACKET nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Processes"
grep PROC nmonsort.csv | sed 's/, */,    /g'
echo " "
echo "Virtual Memory"
grep VM nmonsort.csv | sed 's/, */,    /g'


for i in `ps | grep nmon | awk '{print $1}'`
	do
	sleep 5
	kill $i
done
#Kills the nmon process. Searches the PS output with grep for NMON and saves the PID number using AWK.
#Procedes to kill the process found with the conditions of the loop. Waits 5 seconds before killing.


