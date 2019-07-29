#!/bin/sh

ln -s  /usr/src/wordpress/* /var/www/html
ln -s  /usr/src/wordpress/.htaccess /var/www/html/.htaccess

echo "exited $0"
