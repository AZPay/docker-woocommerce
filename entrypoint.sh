#!/bin/sh
set -e
ln -s  /usr/src/wordpress/* /var/www/html
ln -s  /usr/src/wordpress/.htaccess /var/www/html/.htaccess

