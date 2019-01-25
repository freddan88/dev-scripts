#!/bin/sh
#
# Author: Fredrik Leemann
# GitHub: https://github.com/freddan88/dev-scripts
#
# Config:
my_port=8000
lan_int=enp0s3
php_exe=php
browser=google-chrome
# browser=firefox

########################
echo " "
echo "PHP Server version 2.1.0 Linux"
echo " "
echo "Server listening on:"
echo "--------------------"
soc1=$(ip addr | grep $lan_int | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'):$my_port
soc2=127.0.0.1:$my_port
soc3=localhost:$my_port

echo " "
echo $soc1
echo $soc2
echo $soc3
echo " "

$php_exe -S 0.0.0.0:$my_port > /dev/null &
php_server_pid=$!

$browser http://$soc1 2>/dev/null
kill -9 $php_server_pid
