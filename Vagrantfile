# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Choix de la box Ubuntu 20.04
  config.vm.box = "ubuntu/focal64"

  # Nom de la VM
  config.vm.hostname = "zabbix-monitoring"

  # Configuration réseau : IP privée statique (exemple)
  config.vm.network "private_network", ip: "192.168.56.10"

  # Dossier synchronisé (optionnel)
  # config.vm.synced_folder "./", "/vagrant"

  # Provisionnement avec un script shell
  config.vm.provision "shell", path: "provision.sh"

  # Ressources de la VM (optionnel)
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end
end
