# Use the official PHP image as a base
FROM php:8.1-apache

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip

# Install PHP extensions
RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
