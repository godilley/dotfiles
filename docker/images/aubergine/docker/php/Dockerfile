FROM php:5.6-fpm-alpine

COPY --from=surnet/alpine-wkhtmltopdf:3.7-0.12.5-full /bin/wkhtmltopdf /usr/bin/wkhtmltopdf

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
        libxrender \
        libssl1.0 \
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
        bcmath \
    && rm -rf /var/cache/apk/*

RUN apk add gnu-libiconv --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

ENV APPLICATION_ENV georgelocal
