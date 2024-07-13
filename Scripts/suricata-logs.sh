#!/bin/bash
echo $(cat /var/log/suricata/fast.log | grep $1 | awk -v dt="$(date -u '+%m/%d/%Y-%H:%M:%S.%N' -d '-'$2' seconds')" -F " " 'toupper($1) >= dt { print $0}' | wc -l)