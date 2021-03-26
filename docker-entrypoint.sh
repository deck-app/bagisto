#!/bin/sh

cd /var/www
if [ -d "storage" ]; then 
echo "Git already exists"
else
git clone https://github.com/nabad600/bagisto.git .
echo "Download completed..."
chown -R apache:apache /var/www
fi
cp .env.testing .env
echo ".env file copy done."
sed -i 's#{DB_NAME}#$DB_NAME#g' /var/www/.env
sed -i 's#{DB_USER}#$DB_USER#g' /var/www/.env
sed -i 's#{DB_PASSWORD}#$DB_PASSWORD#g' /var/www/.env
echo ".env file value change."
composer install
echo "File permission."
chown -R apache:apache /var/www
#/public/installer
#php artisan migrate


exec "$@"