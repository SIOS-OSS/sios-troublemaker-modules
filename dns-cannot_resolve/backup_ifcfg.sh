#!/bin/sh

echo "======================================================================"
echo "Following are backup ifcfg files"
echo "======================================================================"
echo

for i in `ls /etc/sysconfig/network-scripts/ifcfg-*`
do
  echo "- $i"
  cat $i
  echo
done
