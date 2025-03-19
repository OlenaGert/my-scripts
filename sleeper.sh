#!/bin/bash 

for i in {1..10}
do
  echo -n "$(date +'%H:%M:%S') "
  ps -ef | wc -l
#sleep 5
sleep 1
done
cat /proc/cpuinfo > cpu_info.txt
cat /etc/os-release > os_info.txt
grep ^NAME /etc/os-release | awk -F= '{print $2}' | tr -d '"' > os_name.txt
for i in {50..100}
do
  touch ${i}.txt
done

