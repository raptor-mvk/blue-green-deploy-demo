sudo -u www-data composer install -q
sudo cp deploy/nginx.conf /etc/nginx/conf.d
sudo sed -i -- "s|%SERVER_NAME%|$1|g" /etc/nginx/conf.d/nginx.conf
sudo service nginx restart
sudo -u www-data php bin/console doctrine:migrations:migrate --no-interaction
