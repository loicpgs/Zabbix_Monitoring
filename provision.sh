#!/bin/bash

# Met à jour la liste des paquets
sudo apt-get update -y

# Installe des outils utiles
sudo apt-get install -y curl vim htop samba apache2

# Installation de l'agent Zabbix (version stable)
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+bionic_all.deb
sudo dpkg -i zabbix-release_6.4-1+bionic_all.deb
sudo apt-get update -y
sudo apt-get install -y zabbix-agent

# Activation et démarrage de l'agent Zabbix
sudo systemctl enable zabbix-agent
sudo systemctl start zabbix-agent

# Nettoyage
rm zabbix-release_6.4-1+bionic_all.deb
