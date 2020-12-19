#!/bin/bash


DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 /usr/sbin/accept"

echo

for file in $DROPLETS ; do
	if [ ping "$file" -e 0 ] ; then
		
		echo "$file : alive.";
		continue
	fi
	ls -l $file | awk '{ print $9 "		file size: " $5}'
	whatis `basename $file`
	
	echo
done

exit 0

