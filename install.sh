#!/bin/sh

filename=ipmitool
dist_folder=/usr/local/bin

if [ "$(id -u)" != "0" ]; then
	echo "Need superuser privilege to install."
	exit 1
fi

echo "Going to install $filename to $dist_folder"
if [ ! -d $dist_folder ]; then
	mkdir -p $dist_folder
fi
cp $filename $dist_folder
echo "done"
