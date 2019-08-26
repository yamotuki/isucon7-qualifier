#!/bin/bash

mkdir -p ./backup/

echo 'Update config file...'
  sudo -S cp /etc/mysql/mysql.conf.d/mysqld.cnf ./backup/mysqld.cnf`date "+%Y%m%d-%H_%M_%S"`
  sudo -S cp mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
echo 'Updateed config file!'

echo 'Restart mysql...'
  sudo -S systemctl restart mysql
echo 'Restarted!'
