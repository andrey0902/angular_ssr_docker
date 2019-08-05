#!/usr/bin/env sh
set -x

export NODE_ENV=production
chmod 777 ./dist/server.js;
echo "ls ./dist/server.js -la";
cd /var/www/light-it-08.tk/ && \
tar -xvf /var/www/light-it-08.tk/package.tgz
