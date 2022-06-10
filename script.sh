#!/bin/bash

# Atualizando os pacotes:
yum update -y

# Configurando os repositórios:
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2

# Instalando o Apache e o MySQL:
yum install -y httpd mariadb-server

# Configurando a inicialização automática:
systemctl start httpd
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb

# Ajustando as permissões:
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www