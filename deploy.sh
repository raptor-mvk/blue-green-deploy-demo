sudo -u www-data composer install -q
sudo cp deploy/nginx.conf /etc/nginx/conf.d
sudo service nginx restart
sudo -u www-data php bin/console doctrine:migrations:migrate --no-interaction
