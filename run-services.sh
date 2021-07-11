#!/usr/bin/env bash

service nginx start &
/usr/sbin/php-fpm7.4 --fpm-config php-fpm.conf &
redis-server &
/home/gitpod/elasticsearch-6.8.9/bin/elasticsearch -d -p /home/gitpod/elasticsearch-6.8.9/pid -Ediscovery.type=single-node &
supervisord &
