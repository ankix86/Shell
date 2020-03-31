#!/bin/bash

read -p "Enter the file name:" filename
read -p "Enter the output filename" ofile

echo "$filename and $ofile"
read -p "select number to choose witch give by different compresion methods\n 1)tar\n 2)gzip\n 3)bzip2\n 4)compress\n" num 

echo "compression Type"

if [ $num == "1" ]  
then
	echo "tar"	
elif [ $num == "2" ]  
then
	echo "gzip"
elif [ $num == "3" ]  
then
	echo "bzip2"
elif [ $num == "4" ]  
then
	echo "compress"
else
	echo "you are stupid"
fi
		
case "$num" in
	"1") tar -cvf $ofile.tar $filename
	;;
	"2") gzip $filename
	;;
	"3") bzip2 $filename
	;;
	"4") compress $filename
	;;
esac
	

