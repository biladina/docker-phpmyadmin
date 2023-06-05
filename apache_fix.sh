#!/bin/bash
echo "Creating an alias for phpmyadmin with /$2"
docker exec -it $1 bash -c 'sed -i "/DocumentRoot \/var\/www\/html/a \        Alias /'$2' /var/www/html" /etc/apache2/sites-enabled/000-default.conf'
docker exec -it $1 bash -c 'apachectl configtest'
docker exec -it $1 bash -c 'service apache2 restart'
echo ""