#!/bin/bash

unzip  /root/nature.zip  

i=0
for j in /root/*.jpg
do
	base64 -d $j | xxd -r  > /root/$i.jpg
	i=$(($i+1))
done
