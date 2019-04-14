FROM php:7.3.4-cli-alpine
COPY . /usr/src/docker-crawler-detect
WORKDIR /usr/src/docker-crawler-detect

RUN apk add --no-cache --virtual .composer-runtime-deps git && \
    (curl -sS https://getcomposer.org/installer | php) && \
    php composer.phar install --no-dev --optimize-autoloader && \
    rm composer.phar && \
    apk del .composer-runtime-deps

EXPOSE 8000
CMD [ "php", "-S", "0.0.0.0:8000" ]
