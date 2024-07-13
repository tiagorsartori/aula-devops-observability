#!/bin/bash
echo $(cat $1 | grep $3 | awk -v dt="$(date '+[%d/%^b/%Y:%H:%M:%S' -d '-'$2' seconds')" -F " " 'toupper($4) >= dt { print $0 }' | wc -l)