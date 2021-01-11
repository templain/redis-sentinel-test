#!/bin/sh


sed -i -e "s|^# protected-mode .*$|protected-mode no|" /etc/redis-sentinel.conf
sed -i -e "s|^sentinel monitor mymaster.*$|sentinel monitor mymaster ${REDIS_MASTER_ADDRESS} ${REDIS_MASTER_PORT} 1|" /etc/redis-sentinel.conf

/usr/bin/redis-sentinel /etc/redis-sentinel.conf
