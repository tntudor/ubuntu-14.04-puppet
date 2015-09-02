Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-14.04.03-base"
  config.puppet_install.puppet_version = '3.8.2'

  config.vm.provision "shell",
    path: "init.sh"
end
