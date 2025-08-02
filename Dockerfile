FROM php:8.4-apache

ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN chown -R www-data:www-data /var/www/html

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli

RUN apt-get update -y && apt-get install -y sendmail libpng-dev

RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev \
        libxml2-dev \
        libjpeg62-turbo-dev \
        libfreetype6-dev \
        libpng-dev \
        libwebp-dev \
        libssl-dev \
        libonig-dev \
        libzip-dev \
        zip

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip
RUN docker-php-ext-install xml
RUN docker-php-ext-install iconv
RUN docker-php-ext-install pcntl

RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp
RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo pdo_mysql


RUN apt-get update && apt-get install -y \
    gcc \
    make \
    libc-dev \
    && pecl install redis \
    && docker-php-ext-enable redis
    
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer global require laravel/installer
RUN echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' | tee -a ~/.bashrc
RUN . ~/.bashrc