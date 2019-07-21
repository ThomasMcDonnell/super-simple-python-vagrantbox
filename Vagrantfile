# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
 
 config.vm.box = "bento/ubuntu-18.04"

 config.vm.provision :shell, path: "bootstrap.sh"

 config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
 config.vm.synced_folder "project", "/home/webdev/project", owner: "webdev", group: "webdev", mount_options:["dmode=775,fmode=664"]
 # config.vm.network "private_network", ip: "192.168.33.10"

 # config.vm.network "public_network"

 # config.vm.synced_folder "../data", "/vagrant_data"

 # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
