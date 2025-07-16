#!/bin/bash
set -e

echo "=== Mise à jour du système ==="
sudo apt update
sudo apt upgrade -y

echo "=== Installation des dépendances ==="
sudo apt install -y wget curl gnupg2 software-properties-common

echo "=== Ajout du dépôt officiel Zabbix 6.4 ==="
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo apt update

echo "=== Installation de Zabbix server, frontend et agent ==="
sudo apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-nginx-conf zabbix-sql-scripts zabbix-agent mariadb-server

echo "=== Configuration de MariaDB ==="
sudo systemctl start mariadb
sudo systemctl enable mariadb

echo "=== Sécurisation de MariaDB ==="
sudo mysql -e "DELETE FROM mysql.user WHERE User='';"
sudo mysql -e "DROP DATABASE IF EXISTS test;"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "=== Création de la base de données Zabbix ==="
sudo mysql -e "CREATE DATABASE zabbix CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;"
sudo mysql -e "CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'zabbix_pass';"
sudo mysql -e "GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "=== Import du schéma initial Zabbix ==="
zcat /usr/share/doc/zabbix-sql-scripts/mysql/server.sql.gz | mysql -uzabbix -pzabbix_pass zabbix

echo "=== Configuration du serveur Zabbix ==="
sudo sed -i "s/# DBPassword=/DBPassword=zabbix_pass/" /etc/zabbix/zabbix_server.conf

echo "=== Activation et démarrage des services ==="
sudo systemctl restart zabbix-server zabbix-agent nginx php-fpm mariadb
sudo systemctl enable zabbix-server zabbix-agent nginx php-fpm mariadb

echo "=== Installation terminée ==="
