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

--dekripsi
#!/bin/bash

#log=`cat syslog`
#dat= `date "+%H:%M %d-%m-%Y"`

read id
#hour=$(date +"%H")
#echo "$hour"
#sislol=($(echo "$1"))
#echo "$sislol"
low=abcdefghijklmnopqrstuvwxyz

low=$low$low

#up=$(ord &log)
up=$(echo $low | tr [a-z] [A-Z])

#rot=$((26-${sislol[0]}))

cat "$1" | tr "${up:id:26}" "${up:0:26}" | tr "${low:id:26}" "${low:0:26}" > "$1-balik"

