# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.provision "shell", path: "provision.sh"
end

Vagrant.configure("2") do |config|
  config.vm.network :public_network, bridge: "en0: Wi-Fi (AirPort)"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "0.0.0.0"
end
