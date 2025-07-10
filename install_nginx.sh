#!/bin/bash

# Installer nginx
sudo apt update
sudo apt install -y nginx

# Sauvegarde ancienne conf
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.backup

# Copier ta conf personnalisée
sudo cp nginx.conf /etc/nginx/nginx.conf

# Redémarrer nginx
sudo systemctl restart nginx

echo "✅ Nginx installé et configuré."
