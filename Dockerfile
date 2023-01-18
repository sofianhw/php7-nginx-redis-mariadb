FROM php:7.4.0-fpm-alpine

WORKDIR /app

RUN apk update \
    && apk add --no-cache make gcc g++ mariadb-client php7-dev \
    && pecl install -o -f redis 
RUN  docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-enable redis 

EXPOSE 9000
CMD ["php-fpm"]