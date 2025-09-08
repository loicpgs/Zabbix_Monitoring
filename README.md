# 🔧 Zabbix Monitoring

📌 Déploiement d’une solution de supervision avec **Zabbix**  
🎯 Objectif : surveiller serveurs, services et ressources via agents, dashboards et alertes  
🧩 Le projet inclut l’installation, la configuration et les premiers scénarios de supervision

---

## 📁 Structure du projet

Zabbix-Monitoring/
├── setup/                     # Scripts d'installation et configuration
│   ├── Install_zabbix_server.sh
│   └── Install_zabbix_agent.sh
│
├── zabbix-server/             # Fichiers liés au serveur Zabbix (config, logs, templates)
│
├── zabbix-agent/              # Fichiers liés aux agents Zabbix (config, monitoring)
│
├── notes.md                   # Journal de bord et documentation technique
├── Vagrantfile                # (optionnel) Déploiement automatisé des VM avec Vagrant
└── README.md                  # Présentation générale du projet

---

## 🚀 Objectifs techniques

- Installer et configurer un serveur **Zabbix 6.4** sur Ubuntu 22.04  
- Installer MariaDB et configurer la base de données pour Zabbix  
- Déployer le frontend web Zabbix avec **Nginx** et **PHP-FPM**  
- Installer et configurer un agent Zabbix sur une VM cliente  
- Superviser des métriques système et services (CPU, disque, HTTP, SSH...)  
- Mettre en place des dashboards et alertes de base  

---

## 🛠️ Technologies utilisées

- 🐧 **Ubuntu Server 22.04 LTS** (VM Vagrant)  
- 🐘 **MariaDB 10.6** (base de données)  
- 🕸️ **Zabbix 6.4** (serveur, frontend, agent)  
- 🌐 **Nginx** + **PHP-FPM** (serveur web frontend)  
- 📝 **Shell scripts** pour automatiser l'installation  
- 🔄 **Vagrant** (pour la gestion des machines virtuelles)  

---

## 🚀 Installation rapide

**Lancez le script d’installation** serveur depuis le dossier **`setup`**:

sudo bash setup/Install_zabbix_server.sh

**Ce script :**

met à jour le système

installe **MariaDB**, **Zabbix server**, frontend et agent

configure la **base de données Zabbix** et l’utilisateur dédié

importe le schéma de base dans la base de données

démarre et active les services nécessaires (mariadb, zabbix-server, zabbix-agent, nginx, php-fpm)

## 📌 Notes

Le script est prévu pour **Ubuntu 22.04**

*La **base zabbix doit être créée manuellement** si elle existe déjà

*La configuration frontend Zabbix est accessible via le navigateur après installation

*Ce projet est **en cours de développement**, la documentation et les scripts seront enrichis

## ✅ À faire

 *Installation serveur Zabbix et base de données

 *Installation et configuration d’agents sur plusieurs VM clientes

 *Création de templates, triggers et dashboards personnalisés

 *Configuration des alertes automatisées

#Licence

M.I.T

