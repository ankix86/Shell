#!/bin/bash

echo $1 > temp
count="$(echo "$1" | awk -F "." '{print NF}')"

case "$count" in
	"2") extension="$(cut -d "." -f 2 temp | tr '\0' '\n')"	
	;;
	"3") extension="$(cut -d "." -f 3 temp | tr '\0' '\n')"
	;;
esac

echo "your extension = $extension"

case "$extension" in
	"tar") tar -xvf $1
	;;
	"gz") gunzip $1
	;;
	"bz2") bunzip2 $1
	;;
	"Z") uncompress $1
	;;
esac
rm temp
	

