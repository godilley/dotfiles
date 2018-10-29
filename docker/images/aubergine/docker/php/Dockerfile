FROM php:5.6-fpm-alpine

RUN apk add --no-cache --virtual .build-deps \
        autoconf \
        binutils \
        curl-dev \
        freetype-dev \
        g++ \
        gcc \
        icu-dev\
        libcurl \
        libjpeg-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libxml2-dev \
        make \
        postfix \
    && apk add --no-cache \
        git \
    && apk add wkhtmltopdf --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j "$(getconf _NPROCESSORS_ONLN)" \
        exif \
        fileinfo \
        gd \
        intl \
        json \
        pdo_mysql \
        mysql \
        soap \
        zip \
    && rm -rf /var/cache/apk/*

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

ENV APPLICATION_ENV development
