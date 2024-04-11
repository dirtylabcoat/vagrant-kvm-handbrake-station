BOX_NAME="handbrakestation"
Vagrant.configure("2") do |config|
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"
  config.vm.box_version = "20240201.01"
  config.vm.hostname = BOX_NAME
  config.vm.provider :libvirt do |lv|
    lv.cpus = 2
    lv.memory = 4096
  end
  config.vm.provision "file", source: "libdvd-setup.sh", destination: "/home/vagrant/libdvd-setup.sh"
  config.vm.provision "file", source: "libdvd-setup.sh.desktop", destination: "/home/vagrant/libdvd-setup.sh.desktop"
  config.vm.provision :shell, path: "provision.sh"
end