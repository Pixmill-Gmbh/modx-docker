ARG PHP_VERSION=${PHP_VERSION}

FROM php:${PHP_VERSION}-fpm-alpine
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk update && apk upgrade
RUN apk add build-base autoconf libzip-dev libpng-dev libjpeg-turbo-dev libwebp-dev bash mariadb-client

RUN pecl install xdebug-3.1.0
RUN docker-php-ext-configure gd --with-jpeg --with-webp && docker-php-ext-install gd
RUN docker-php-ext-install exif
RUN docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN composer global config minimum-stability alpha
RUN composer global require modmore/gitify:^2
ENV PATH=/root/.composer/vendor/bin:$PATH

CMD php-fpm -R
