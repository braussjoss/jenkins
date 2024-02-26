#!/bin/bash

# Starts ssh

/usr/sbin/sshd

# Starts php process in background

/usr/sbin/php-fpm -c /etc/php/fpm

echo -e '\nlisten = 127.0.0.1:9000\n' >>  /etc/php-fpm.d/www.conf

/usr/sbin/php-fpm -c /etc/php/fpm

# Starts nginx daemon

nginx -g 'daemon off;'


