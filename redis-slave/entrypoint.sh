#!/bin/sh

sed -i -e "s|^bind 127.0.0.1.*$|# bind 127.0.0.1|" /etc/redis.conf
sed -i -e "s|^protected-mode .*$|protected-mode no|" /etc/redis.conf
sed -i -e "s|^# slaveof .*$|slaveof ${REDIS_MASTER_ADDRESS} ${REDIS_MASTER_PORT}|" /etc/redis.conf

/usr/bin/redis-server /etc/redis.conf
