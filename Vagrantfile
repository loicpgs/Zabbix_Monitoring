# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Configuration commune
  config.vm.box = "ubuntu/jammy64"

  # Serveur Zabbix
  config.vm.define "zabbix-server" do |server|
    server.vm.hostname = "zabbix-server"
    server.vm.network "private_network", ip: "192.168.56.10"
    server.vm.provider "virtualbox" do |vb|
      vb.name = "zabbix-server"
      vb.memory = 2048
      vb.cpus = 2
    end
    server.vm.provision "shell", path: "setup/install_zabbix_server.sh"
  end

  # Agent Zabbix
  config.vm.define "zabbix-agent" do |agent|
    agent.vm.hostname = "zabbix-agent"
    agent.vm.network "private_network", ip: "192.168.56.11"
    agent.vm.provider "virtualbox" do |vb|
      vb.name = "zabbix-agent"
      vb.memory = 1024
      vb.cpus = 1
    end
    agent.vm.provision "shell", path: "setup/install_zabbix_agent.sh"
  end
end
