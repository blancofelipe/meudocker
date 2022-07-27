FROM php:7.3-apache
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli
ADD wordpress-6.0.1.tar.gz /wordpress
