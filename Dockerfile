FROM php:7.4.33-apache

# Docker composer installation
RUN apt update && apt install -y unzip git  \ 
    && curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php \
    && HASH=`curl -sS https://composer.github.io/installer.sig` \
    && php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer 
    
#PHP Extension
COPY install-php-extensions /usr/local/bin/ 
    
RUN chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions gd xdebug calendar intl apcu mysqli pgsql pcntl sockets

COPY wikimedia .

EXPOSE 80

CMD ["apache2-foreground"]






    
