FROM php:8.2-fpm-alpine

# Set the working directory
WORKDIR /var/www/html

# Install dependencies and PHP extensions
RUN apk update && apk add --no-cache \
    icu-dev \
    zip \
    libzip-dev \
    supervisor \
    && docker-php-ext-install mysqli pdo pdo_mysql zip \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && docker-php-ext-configure pcntl --enable-pcntl \
    && docker-php-ext-install pcntl

# Copy the composer binary from the official composer image
COPY --from=composer:2.5.7 /usr/bin/composer /usr/local/bin/composer

# Copy application files
COPY src .

# Expose port 9000
EXPOSE 9000

