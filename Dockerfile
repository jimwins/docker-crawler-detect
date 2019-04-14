FROM php:7.3.4-cli-alpine
COPY . /usr/src/docker-crawler-detect
WORKDIR /usr/src/docker-crawler-detect
EXPOSE 8000
CMD [ "php", "-S", "0.0.0.0:8000" ]
