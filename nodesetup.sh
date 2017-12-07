#/bin/bash

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install pm2 -g

echo "RUN PM2 STARTUP!"
# pm2 startup
