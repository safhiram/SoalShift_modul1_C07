#!/bin/bash

awk '((/[cC][rR][oO][nN]/)&& !(/[sS][uU][dD][oO]) && (NF<13))' /var/log/syslog >> /home/imanafandy/modul1
