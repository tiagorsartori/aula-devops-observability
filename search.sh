#!/bin/bash

pattern=$1
log_file_path=$2

count=$(grep -c "$pattern" "$log_file_path")

echo $count