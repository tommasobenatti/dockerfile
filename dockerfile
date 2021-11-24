# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM amazoncorretto:17-alpine

MAINTAINER Tommaso Benatti, <me@tommasobenatti.dev>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig zip unzip\
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]