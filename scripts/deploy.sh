#!/usr/bin/env sh
set -x
ssh -o "StrictHostKeyChecking=no" -p54231 usr01@188.166.54.169 ""
CHECK_ANGULAR=$(ssh -o "StrictHostKeyChecking=no" -p54231 usr01@188.166.54.169 "docker ps -a --format \"{{.Names}}\" | grep angular_ssr")
if [[ "$CHECK_ANGULAR" == "angular_ssr_1" ]]
then
  ssh -o "StrictHostKeyChecking=no" -p54231 usr01@188.166.54.169 "docker rm -f angular_ssr_1 && docker rmi -f 6633/angular-ssr:angular_ssr"
  ssh -o "StrictHostKeyChecking=no" -p54231 usr01@188.166.54.169 "docker login -u 6633 -p qwerty123 && docker run --name angular_ssr_1 -p 4202:4000 6633/angular-ssr:angular_ssr"
  else
  ssh -o "StrictHostKeyChecking=no" -p54231 usr01@188.166.54.169 "docker login -u 6633 -p qwerty123 && docker run --name angular_ssr_1 -p 4202:4000 6633/angular-ssr:angular_ssr"
fi
