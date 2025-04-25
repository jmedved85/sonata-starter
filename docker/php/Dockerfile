FROM php:8.3-fpm-alpine

# Useful PHP extension installer image, copy binary into your container
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

# Install dependencies
RUN apk add --no-cache \
        acl \
        bash \
        fcgi \
        file \
        gettext \
        git \
        libstdc++ \
        libx11 \
        libxrender \
        libxext \
        libssl3 \
        ca-certificates \
        fontconfig \
        freetype \
        ttf-dejavu \
        wget \
        tar

# Install PHP extensions
RUN set -eux; \
    install-php-extensions \
        intl \
        zip \
        apcu \
        opcache \
        mbstring \
        gd \
        imagick \
        pdo pdo_mysql

# Copy custom php.ini
COPY ./docker/php/php.ini /usr/local/etc/php/php.ini

# Copy wkhtmltopdf binaries from the wkhtmltopdf image
COPY --from=surnet/alpine-wkhtmltopdf:3.20.3-0.12.6-full /bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf

# Install Xdebug and copy configuration
RUN set -eux; \
	install-php-extensions xdebug
COPY ./docker/php/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Set permissions for the uploads directory
RUN mkdir -p /var/www/html/public/uploads/documents && \
    chown -R www-data:www-data /var/www/html/public/uploads/documents && \
    chmod -R 777 /var/www/html/public/uploads/documents

# Set working directory
WORKDIR /var/www/html