FROM wordpress:latest

# Install extra PHP extensions (optional)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy custom configs/themes/plugins if needed
COPY ./themes /var/www/html/wp-content/themes
COPY ./plugins /var/www/html/wp-content/plugins

EXPOSE 80