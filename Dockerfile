FROM php:5.6-apache
# for php > 5.4
RUN a2enmod rewrite && a2enmod proxy &&  a2enmod proxy_http && a2enmod proxy_connect && docker-php-ext-install mysqli pdo_mysql
ADD vhost.conf /etc/apache2/sites-available/000-default.conf



