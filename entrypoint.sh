#!/bin/sh
set -e
rm -d /var/www/html/*
rm -d /var/www/html/.htaccess
ln -s  /usr/src/wordpress/* /var/www/html
ln -s  /usr/src/wordpress/.htaccess /var/www/html/.htaccess
exit 0
