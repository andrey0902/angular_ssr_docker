#!/usr/bin/env sh
set -x
chmod 777 ./dist/server.js;
echo "ls ./dist/server.js -la";
tar -czf package.tgz ./dist/travis;
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -P 54231 package.tgz usr01@188.166.54.169:/var/www/light-it-08.tk/;
ssh -o "StrictHostKeyChecking=no" -p"$PORT" "$REMOTEUSER"@"$REMOTEHOST" "rm -rf /var/www/light-it-08.tk/*";
scp -P"$PORT" package.tgz "$REMOTEUSER"@"$REMOTEHOST":/var/www/light-it-08.tk/;
ssh -p"$PORT" "$REMOTEUSER"@"$REMOTEHOST" "cd /var/www/light-it-08.tk/ && tar -xvf /var/www/light-it-08.tk/package.tgz";
