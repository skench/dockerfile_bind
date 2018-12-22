#!/bin/bash

mkdir -p /var/cache/bind/
mkdir -p /var/log/bind/
chown -R bind:bind /var/cache/bind/
chown -R bind:bind /var/log/bind/