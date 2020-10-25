#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
curl https://raw.githubusercontent.com/Chn-wxg/keyone-EY/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/*-*-*-*
wget https://raw.githubusercontent.com/Chn-wxg/keyone-EY/master/user.conf
nginx -s reload

