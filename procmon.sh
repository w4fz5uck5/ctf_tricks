#!/bin/bash
#Simple process monitor

IFS=$'\n'

old_pr=$(ps -eo command)

while true; do
  new_pr=$(ps -eo command)
  diff <(echo "$old_pr") <(echo "$new_pr") | grep [\<\>] 
  sleep 1
  old_pr=$new_pr
done
