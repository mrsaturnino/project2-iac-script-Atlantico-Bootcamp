#!/bin/bash

echo "Atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando o apache..."

sudo apt-get install apache2 -y

echo "Instalando a aplicacao no servidor apache..."

cd /tmp
sudo git clone https://github.com/denilsonbonatti/linux-site-dio.git
cd linux-site-dio

sudo rm /var/www/html/index.html
sudo cp -R * /var/www/html