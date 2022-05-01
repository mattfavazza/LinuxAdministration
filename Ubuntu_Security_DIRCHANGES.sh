#!/bin/bash
#Creates a hash sum of /etc and /usr directories

echo "Last Ran" >> DIRCHANGES.txt
date >> DIRCHANGES.txt
echo "---------------------------------------" >> DIRCHANGES.txt
#adds the date


echo "/etc checksum" >> DIRCHANGES.txt
echo tar cvf - /etc | sha1sum | sed '\/etc/d' >> DIRCHANGES.txt
#creates temporary .tar files, finds hash of that file. sed removes output from tar operation

echo "/usr checksum" >> DIRCHANGES.txt
echo tar cvf - /usr | sha1sum | sed '\/usr/d' >> DIRCHANGES.txt
#Creates temporary .tar file, finds the hash of that file. Sed removes output from tar.
