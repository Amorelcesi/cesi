#!/bin/bash

echo " Installation de Nginx..."
sudo apt update
sudo apt install -y nginx

echo " Sauvegarde de la config actuelle..."
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.backup

echo " Copie de la nouvelle config Nginx..."
sudo cp nginx.conf /etc/nginx/nginx.conf

echo " Déploiement du site 'saucisses'..."
sudo rm -rf /var/www/html/*
sudo cp -r www/* /var/www/html/

echo " Redémarrage de Nginx..."
sudo systemctl restart nginx

echo " Déploiement terminé ! Rendez-vous sur http://localhost"
