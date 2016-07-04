# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.ssh.insert_key = true

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.box_check_update = false

  config.berkshelf.enabled = true

  config.vm.synced_folder "workspace", "/home/vagrant/workspace"

  config.omnibus.chef_version = "12.10.24"
  # requires 'vagrant plugin install vagrant-omnibus'
  config.omnibus.install_url = "./scripts/chef_install.sh"

  config.vm.provider "virtualbox" do |vb|
     vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
     vb.gui = false
     vb.memory = "1024"
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.add_role("devbox")
  end
end
