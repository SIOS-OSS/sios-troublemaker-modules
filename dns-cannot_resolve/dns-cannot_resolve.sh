#!/bin/sh

sed -i -e 's/^\(nameserver\)/#\1/' /etc/resolv.conf

for IFCFG in `ls /etc/sysconfig/network-scripts/ifcfg-*`
do
  sed -i -e 's/^\(PEERDNS=\)/#\1/' $IFCFG
  echo 'PEERDNS=no' >> $IFCFG
done

