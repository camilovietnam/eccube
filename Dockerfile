FROM php:7.2-apache 

RUN apt-get update && apt-get install -y libzip-dev libicu-dev nano
RUN docker-php-ext-install zip mysqli pdo pdo_mysql intl 
RUN a2enmod rewrite 

USER www-data
COPY ./src /var/www/html
COPY ./install_ecc.sh /var/www/html/install_ecc.sh

USER root
RUN chmod +x /var/www/html/install_ecc.sh && chmod +x /var/www/html/bin/console && cp /var/www/html/.env.dist /var/www/html/.env
