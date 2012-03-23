Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.boot_mode = :gui

  # Enable the Puppet provisioner
  config.vm.provision :puppet
end