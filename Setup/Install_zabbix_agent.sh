#!/bin/bash
set -e

echo "=== Mise à jour du système ==="
sudo apt update
sudo apt upgrade -y

echo "=== Ajout du dépôt officiel Zabbix ==="
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-1+ubuntu22.04_all.deb
sudo apt update

echo "=== Installation de l'agent Zabbix ==="
sudo apt install -y zabbix-agent

echo "=== Configuration de l'agent Zabbix ==="
# Remplace l'adresse du serveur Zabbix par celle de ta VM serveur
sudo sed -i "s/^Server=127.0.0.1/Server=192.168.56.10/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^ServerActive=127.0.0.1/ServerActive=192.168.56.10/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^Hostname=Zabbix server/Hostname=zabbix-agent/" /etc/zabbix/zabbix_agentd.conf

echo "=== Démarrage et activation de l'agent Zabbix ==="
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

echo "=== Installation agent terminée ==="
