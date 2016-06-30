# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.5.0"
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "forwarded_port", guest: 7777, host: 7777

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 3

  config.vm.synced_folder "/users/keithblackwell1/dropbox/k_fin/", "/home/vagrant/k_fin"
  end
end