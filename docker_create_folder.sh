#!/bin/bash

mkdir -p /var/cache/bind/
mkdir -p /var/log/bind/
chown -R bind:bind /var/cache/bind/
chown -R bind:bind /var/log/bind/

echo "logging {" >> /etc/bind/named.conf
echo "	channel bind.log {" >> /etc/bind/named.conf
echo "	file \"/var/log/bind/bind.log\";" >> /etc/bind/named.conf
echo "	severity notice;" >> /etc/bind/named.conf
echo "	print-category yes;" >> /etc/bind/named.conf
echo "	print-severity yes;" >> /etc/bind/named.conf
echo "	print-time yes;" >> /etc/bind/named.conf
echo "  };" >> /etc/bind/named.conf
echo "	" >> /etc/bind/named.conf
echo "	category queries { bind.log; };" >> /etc/bind/named.conf
echo "	category default { bind.log; };" >> /etc/bind/named.conf
echo "	category config { bind.log; };" >> /etc/bind/named.conf
echo "  };" >> /etc/bind/named.conf
