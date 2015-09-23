Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-14.04.03-base"
  config.puppet_install.puppet_version = '3.8.3'

  config.ssh.insert_key = false
  
  config.vm.provision "shell",
    path: "init.sh"

  config.vm.provision "shell",
    path: "update.sh"
    
end
