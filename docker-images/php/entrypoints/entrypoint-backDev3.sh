#!/bin/sh
set -e

# Executar chown
chown -R www-data:www-data * 

# Executar chmod
chmod -R o+w /var/www/

# # Executar o Supervisor
# /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf

# Executar o PHP FPM
php-fpm

exec "$@"