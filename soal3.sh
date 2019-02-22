#!/bin/bash

name="password"

while [ 0 ]; do
num=1
cek=0

pass=$(cat /dev/urandom | tr -dc A-Za-z0-9 | head -c 12)

while test -e "$name$num.txt"; do
	if [ pass != $(echo $name$num.txt) ]; then
	((num++))
	else
	cek=1
	break
	fi
done

if [ $cek  ]; then
	echo $num $pass
	namafile="$name$num.txt"
	echo $pass > $namafile
	break
	fi
done
