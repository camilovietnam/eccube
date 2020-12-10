#!/bin/bash

# Install software dependencies
apt-get update
apt-get install -y default-mysql-server nano unzip zip libzip-dev libicu-dev nano
docker-php-ext-install zip mysqli pdo pdo_mysql intl

## Enable mod_rewrite for Apache
a2enmod rewrite

## Start and configure MySQL
/etc/init.d/mysql start
mysql -u root -e "CREATE DATABASE eccube"
mysqladmin -u root password '123'

## Download and configure composer
php -r "copy('https://getcomposer.org/composer-1.phar', '/usr/bin/composer');"
chmod +x /usr/bin/composer

## Set up local permissions
chmod +x /var/www/html/bin/console
cp /var/www/html/.env.dist /var/www/html/.env
chown www-data:www-data -R /var/www/html

## Install eccube dependencies
composer install

## Install eccube framework
/var/www/html/bin/console eccube:install --no-interaction