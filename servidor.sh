#!/bin/bash

echo "Provisionando Servidor Web..."
echo ""
echo "Atualizando servidor..."
sudo apt update
sudo apt upgrade -y
echo "Instalando servidor apache..."
sudo apt install apache2 -y
echo "Instalando unzip..."
sudo apt install unzip -y
echo "Efetuando download da aplicação no diretório /tmp..."
cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip -o main.zip
echo "Copiando arquivos da aplicação para o diretório padrão do apache..."
sudo cp -r -v -f /tmp/linux-site-dio-main/* /var/www/html
echo "Excluindo arquivos baixados..."
sudo rm -f -v main.*
echo "Provisionamento finalizado."
