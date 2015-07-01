#!/usr/bin/env bash


export IP=$(ip addr list eth0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1)

exec /pydbgpproxy/pydbgpproxy -d $IP:9000 -i $IP:9001