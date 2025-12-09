FROM php:8.2-fpm

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
git \ 
unzip \
libzip-dev \
libpng-dev \
libonig-dev \
libxml2-dev 

RUN docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl bcmath gd

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY . .

RUN chown -R www-data:www-data /var/www

EXPOSE 9000

CMD ["php-fpm"]