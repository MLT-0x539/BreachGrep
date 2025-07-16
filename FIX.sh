#!/bin/bash

# fix that deletes all lines from data folder that do not contain symbol '@'
# we only want this to return emails and their associated info


find data | sort | while read file; 
do 
	if [ -f "$file" ]; then
		cat $file | grep -a @ > $file\_; 
		mv $file\_ $file;
	fi;
done
