FROM redis:alpine as development

WORKDIR /app

COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

FROM development as production