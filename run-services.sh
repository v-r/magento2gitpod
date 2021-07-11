#!/usr/bin/env bash

service nginx start &
/usr/sbin/php-fpm7.4 --fpm-config php-fpm.conf &
sudo supervisord &