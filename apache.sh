#!/bin/bash

cd /
cd tmp
pwd

# atualizando o servidor
echo "Baixando atualização.."
apt-get update

# colocando as atualizações em vigor
echo "Fazendo upgrade.."
apt-get upgrade -y

# baixando o apache2
echo "Installando o apache2.."
apt install apache2 -y

# baixando o unzip
echo "Installando o unzip.."
apt install unzip -y

# baixando a aplicação
echo "Baixando aplicação.."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# extraindo dados
echo "Extraindo arquivos.."
unzip *.zip

# copiando os arquivos de dentro da pasta extraída para o diretório do apache
echo "Copiando arquivos da aplicação para o diretório apache"
cp linux*/* /var/www/html/ -R