📡 Zabbix Monitoring – Projet de Supervision

🔧 Projet TSSR | 🖥️ VirtualBox + 📦 Vagrant | 🧪 Environnement de test supervisé avec Zabbix

🚀 Objectif
Déployer un environnement de supervision basé sur Zabbix dans une machine virtuelle Ubuntu provisionnée automatiquement, afin de surveiller l’état de services et de systèmes dans un contexte d’apprentissage TSSR.

🗂️ Contenu du projet
📁 Vagrantfile – Configuration de la VM Ubuntu (réseau, ressources)

📜 provision.sh – Script Shell d’installation & configuration :

🧰 Installation de Zabbix Server, Frontend et Agent

⚙️ Configuration initiale de la base de données

🔐 Ajustement des paramètres de sécurité & pare-feu

📌 Interfaces réseau :

🌐 NAT (Adapter 1) – Accès Internet

🖧 Réseau privé hôte (Adapter 2) – Accès local pour tests

🧪 Prérequis
🪟 Windows 10+

🧱 VirtualBox

📦 Vagrant

🔧 Git (optionnel pour cloner le dépôt)

⚙️ Lancement rapide

# 1. Cloner le dépôt

git clone https://github.com/ton-utilisateur/Zabbix_Monitoring.git
cd Zabbix_Monitoring

# 2. Démarrer la machine virtuelle

vagrant up

# 3. Accéder à la VM

vagrant ssh
🌍 Accès Zabbix Web UI
Accès via navigateur : http://192.168.56.10/zabbix
🔐 Identifiants par défaut : Admin / zabbix

🧠 Objectifs pédagogiques
🎯 Découverte de Zabbix et de ses composants

🔁 Déploiement automatisé reproductible

📡 Supervision de services systèmes (CPU, RAM, etc.)

📘 Documentation rigoureuse pour suivi de progression

🛠️ À venir
📈 Ajout de clients Zabbix agents

🔄 Supervision multi-hôte

📤 Notifications mail ou webhook

## Licence

Ce projet est sous licence **MIT**.  
Voir le fichier [LICENSE](LICENSE) pour plus de détails.

