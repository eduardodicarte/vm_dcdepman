# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_FILE_VERSION = 2

Vagrant.configure(VAGRANT_FILE_VERSION) do |config|
   
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"
  
  config.vm.define :dcdepman do |dcdepman|
  	dcdepman.vm.hostname = "dcdepman.dicarte.com.br"	
	dcdepman.vm.network "private_network", ip: "192.168.210.208"
  end

  config.vm.provision "puppet" do |puppet|
	  puppet.environment_path = "environments"
	  puppet.environment = "development"
	  
	  puppet.facter = {
	      "dep_man_name" => "maven"
      }
  end
end
