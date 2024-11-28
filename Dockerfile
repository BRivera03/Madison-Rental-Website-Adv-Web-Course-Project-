FROM php:8-apache

RUN docker-php-ext-install mysqli

# Use a "bind" mount to upate web files withoug rebuilding server
# - See compose.yml

CMD ["apache2-foreground"]
