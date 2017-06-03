#!/bin/bash

usermod -u $USER_ID www-data
groupmod -g $USER_ID www-data

#Wait MySql is Ready!
while ! mysqladmin ping -h"$DB_HOST" -uroot -p"$WORDPRESS_DB_PASSWORD" --silent; do
    sleep 1
done

#Create wordpress Database
mysql -h"$DB_HOST" -uroot -p"$WORDPRESS_DB_PASSWORD" --execute="CREATE DATABASE wordpress"

#Insert base sql
mysql -h"$DB_HOST" -uroot -p"$WORDPRESS_DB_PASSWORD" wordpress < /mysql/base.sql

# Install  wordpress plugins
cd /var/www/html && wp plugin install \
  duplicator \
  --activate --allow-root

#Run apache
apache2-foreground
