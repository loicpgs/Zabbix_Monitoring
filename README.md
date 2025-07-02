# 📊 Zabbix Monitoring avec Vagrant

Projet de mise en place rapide d'un environnement de supervision **Zabbix** à l'aide de **Vagrant** et **VirtualBox**.

## ⚙️ Technologies utilisées

- 🐧 Ubuntu Server (via box `ubuntu/focal64`)
- 📦 Zabbix (agent/server selon la config)
- 🧰 Vagrant
- 📜 Provisioning automatisé avec script Bash (`provision.sh`)

## 🚀 Lancement rapide


git clone https://github.com/loicpgs/Zabbix_Monitoring.git
cd Zabbix_Monitoring
vagrant up

Le provisioning installe automatiquement les outils nécessaires à la surveillance.

🛠 Structure du projet

Zabbix_Monitoring/
├── Vagrantfile         # Configuration de la VM
├── provision.sh        # Script de provisioning (installation Zabbix & outils)
├── README.md           # Documentation du projet
└── .gitignore          # Fichiers à ignorer par Git


📝 Licence
Ce projet est distribué sous licence MIT.