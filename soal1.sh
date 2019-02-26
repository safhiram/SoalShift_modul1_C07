#!/bin/bash


unzip ~/Downloads/nature.zip

i=0
for j in ~/Downloads/nature/*.jpg
do
	base64 -d $j | xxd -r  > $i.jpg
	i=$(($i+1))
done
