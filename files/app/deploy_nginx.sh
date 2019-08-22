#!/bin/bash

mkdir -p ./backup/

echo 'Update config file...'
  sudo -S cp /etc/nginx/nginx.conf ./backup/nginx.top.conf`date "+%Y%m%d-%H_%M_%S"`
  sudo -S cp nginx.top.conf /etc/nginx/nginx.conf

  sudo -S cp /etc/nginx/sites-enabled/nginx.php.conf ./backup/nginx.php.conf`date "+%Y%m%d-%H_%M_%S"`
  sudo -S cp nginx.php.conf /etc/nginx/sites-enabled/nginx.php.conf
echo 'Updateed config file!'

echo 'Restart nginx...'
  sudo -S systemctl restart nginx.service
echo 'Restarted!'
