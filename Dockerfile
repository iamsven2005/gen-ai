FROM php:8.2-apache

WORKDIR /var/www/html

# Runtime PHP settings for uploads and predictable datetime handling.
RUN { \
    echo "file_uploads=On"; \
    echo "upload_max_filesize=8M"; \
    echo "post_max_size=10M"; \
    echo "memory_limit=256M"; \
    echo "date.timezone=UTC"; \
} > /usr/local/etc/php/conf.d/app.ini

COPY . /var/www/html/

# Ensure the web server user can write CSV data and uploaded photos.
RUN chown -R www-data:www-data /var/www/html/data /var/www/html/uploads

EXPOSE 80
