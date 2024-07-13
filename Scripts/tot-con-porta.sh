#!/bin/bash
echo $(netstat -antp | grep :$1 | grep STAB | wc -l)