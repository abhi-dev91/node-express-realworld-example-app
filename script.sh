#!/bin/bash

apt-get update
apt-get install nodejs npm -y
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org git
sudo systemctl start mongod

cd /home/azureuser/
sudo -u azureuser bash -c 'git clone https://github.com/abhi-dev91/node-express-realworld-example-app.git'
cd node-express-realworld-example-app/
sudo -u azureuser bash -c  ' echo MONGODB_URI=mongodb://localhost:27017/conduit > .env  &&  npm install && npm start'
