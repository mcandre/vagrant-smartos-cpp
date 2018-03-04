Vagrant.configure("2") do |config|
  config.vm.box = "mcandre/vagrant-smartos-pkgsrc"
  config.vm.box_version = "0.0.3"

  # Prepare for vagrant package
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/opt/vagrant", type: "rsync", disabled: true

  config.vm.provision "shell", path: "bootstrap.sh"
end
