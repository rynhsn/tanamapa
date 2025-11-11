# Gunakan PHP 8.2 dengan Apache
FROM php:7.4-apache

# Copy semua file project ke folder web server
COPY . /var/www/html/

# Ubah permission
RUN chmod -R 755 /var/www/html

# Install ekstensi yang dibutuhkan CI3
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Aktifkan mod_rewrite (buat .htaccess)
RUN a2enmod rewrite

# Set DocumentRoot (opsional, CI3 default di root)
WORKDIR /var/www/html
