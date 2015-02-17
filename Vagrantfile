Vagrant.configure(2) do |config|

  config.vm.define :devloy do |node|
    node.vm.box = "centos6.5"
    node.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
    node.vm.hostname = "devloy"
    node.vm.network :forwarded_port, guest: 22, host: 2001, id: "ssh"
    node.vm.network :private_network, ip: "192.168.33.11"
    node.vm.provision :shell, :path => "./init_devloy.sh",:privileged => true
  end

  config.vm.define :hubot do |node|
    node.vm.box = "centos6.5"
    node.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
    node.vm.hostname = "hubot"
    node.vm.network :forwarded_port, guest: 22, host: 2002, id: "ssh"
    node.vm.network :forwarded_port, guest: 80, host: 8000, id: "http"
    node.vm.network :private_network, ip: "192.168.33.12"
    node.vm.provision :shell, :path => "./init_hubot.sh",:privileged => true
  end

end
