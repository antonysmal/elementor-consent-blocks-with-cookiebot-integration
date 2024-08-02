#!/bin/bash

# Download WordPress
if [ ! -f wp-config.php ]; then
  wp core download --allow-root
fi

# Create wp-config.php
if [ ! -f wp-config.php ]; then
  wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --allow-root
fi

# Wait for the database to be ready
until wp db query 'SELECT 1' --allow-root; do
  echo "Waiting for the database to be ready..."
  sleep 5
done


# Install WordPress
if ! wp core is-installed --allow-root; then
  wp core install --url='http://localhost:8000' --title='DEVELOPMENT' --admin_user=admin --admin_password=admin --admin_email=admin@example.com --skip-email --allow-root
fi

# Install and activate Elementor
if ! wp plugin is-installed elementor --allow-root; then
  wp plugin install elementor --activate --allow-root
fi

# Activate this project
if wp plugin is-installed elementor-consent-blocks-cookiebot --allow-root && ! wp plugin is-active elementor-consent-blocks-cookiebot --allow-root; then
  wp plugin activate elementor-consent-blocks-cookiebot --allow-root
fi

# Start Apache
apache2-foreground
