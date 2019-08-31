#!/bin/bash

for host in `cat app_hosts.txt` 
do
  scp -i ~/.ssh/alibaba_key.pem ../../webapp/php/index.php isucon@${host}:./isubata/webapp/php/index.php
  ssh -i ~/.ssh/alibaba_key.pem root@${host} systemctl restart isubata.php.service
done
