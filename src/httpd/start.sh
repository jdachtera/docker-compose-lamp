#!/bin/bash

#printf "\nxdebug.remote_host = \"$(/sbin/ip route|awk '/default/ { print $3 }')\"\n" >> /etc/php5/apache2/php.ini

exec /usr/sbin/apache2ctl -D FOREGROUND;