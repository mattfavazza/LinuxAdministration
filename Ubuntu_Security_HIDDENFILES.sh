#!/bin/bash
#finds hidden files

echo "Last Ran" >> HIDDENFILES.txt
date >> HIDDENFILES.txt
echo " " >>HIDDENFILES.txt

sudo find /boot -name ".*" -ls >> HIDDENFILES.txt
sudo find /dev -name ".*" -ls >> HIDDENFILES.txt
sudo find /etc -name ".*" -ls >> HIDDENFILES.txt
sudo find /home -name ".*" -ls >> HIDDENFILES.txt
sudo find /lost+found -name ".*" -ls >> HIDDENFILES.txt
sudo find /media -name ".*" -ls >> HIDDENFILES.txt
sudo find /mnt -name ".*" -ls >> HIDDENFILES.txt
sudo find /opt -name ".*" -ls >> HIDDENFILES.txt
sudo find /proc -name ".*" -ls >> HIDDENFILES.txt
sudo find /root -name ".*" -ls >> HIDDENFILES.txt
sudo find /run -name ".*" -ls >> HIDDENFILES.txt
sudo find /snap -name ".*" -ls >> HIDDENFILES.txt
sudo find /srv -name ".*" -ls >> HIDDENFILES.txt
sudo find /sys -name ".*" -ls >> HIDDENFILES.txt
sudo find /usr -name ".*" -ls >> HIDDENFILES.txt
sudo find /var -name ".*" -ls >> HIDDENFILES.txt
