#!/bin/bash

echo "Atualizando Servidor..."

apt-get update

apt-get upgrade -y

echo "Instalando o Apache2..."

apt-get install apache2 -y

echo "Instalando o UnZip..."

apt-get install unzip -y

echo "Baixando aplicação no GitHub..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicação..."

unzip main.zip

echo "Upando aplicação para pasta pública do servidor HTTP Apache2..."

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Apagando pasta temporária da aplicação descompactada..."

cd ..

rm -R -f linux-site-dio-main/
