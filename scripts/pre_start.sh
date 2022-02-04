#!/bin/bash
apt-get update
apt-get install nodejs npm -y
#npm install //to be uncomented if buildspec.yml config not worked.
npm install pm2 -g
