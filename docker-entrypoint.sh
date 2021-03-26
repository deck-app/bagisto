#!/bin/sh

cd /var/www
if [ -d "storage" ]; then 
echo "Git already exists"
else
git clone https://github.com/nabad600/bagisto.git .
echo "Download completed..."
#chown -R apache:apache /var/www
#cp .env.testing .env
cp /sbin/app /var/www/.env
#echo $DB_USER
echo ".env file copy done."
#sed -i "s/$DB_USER/bagisto/g" /var/www/.env
#sed -i 's#{DB_NAME}#$DB_NAME#g' /var/www/.env
#sed -i 's#{DB_USER}#$DB_USER#g' /var/www/.env
#sed -i 's#{DB_PASSWORD}#$DB_PASSWORD#g' /var/www/.env
echo ".env file value change."
fi
composer install
echo "File permission."
chown -R apache:apache /var/www
chmod -R 777 storage
#/public/installer
#php artisan migrate


exec "$@"