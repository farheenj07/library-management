FROM php:8.1-apache

# Copy project files to Apache root
COPY . /var/www/html/

# Give permissions
RUN chown -R www-data:www-data /var/www/html

# Enable Apache rewrite (optional)
RUN a2enmod rewrite

EXPOSE 80
