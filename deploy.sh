#!/bin/bash

sudo apt-get update
curl -sL https://deb.nodesource.com/setup_17.3.0 -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt-get install nodejs -y
sudo npm install pm2 -g
sudo pm2 start app.js
sudo pm2 save
