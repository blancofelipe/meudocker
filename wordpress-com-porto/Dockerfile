FROM wordpress

# Set environment variables used by the Wordpress image
# DB_USER and DB_PASSWORD are included as an example. However,
# these should be removed and set during docker run.

#ENV WORDPRESS_DB_HOST=bancodedados \
#    WORDPRESS_DB_USER=wordpress \
#    WORDPRESS_DB_PASSWORD=wordpress \
#    WORDPRESS_DB_NAME=wpsite \
#    WORDPRESS_TABLE_PREFIX=wp_

COPY plugins/ /var/www/html/wp-content/plugins
COPY themes/ /var/www/html/wp-content/themes
#COPY uploads/ /var/www/html/wp-content/uploads