#!/bin/bash

#log=`cat syslog`
#dat= `date "+%H:%M %d-%m-%Y"`
hour=$(date +"%H")
dat=`date +"%H:%M %d-%m-%Y"`
sislol="/var/log/syslog"

low=abcdefghijklmnopqrstuvwxyz

#low=$(ord $log)
low=$low$low

#up=$(ord &log)
up=$(echo $low | tr [a-z] [A-Z])

cat $sislol | tr [${low:26}${up:26}] [${low:$hour:26}${up:$hour:26}] > "/home/safhiram/Sisop/$dat"
