Vagrant.configure("2") do |config|
  vm_box = "luminositylabsllc/bento-ubuntu-20.04-arm64"

  config.vm.define "ansible", primary: true do |ansible|
      ansible.vm.box=vm_box
      ansible.vm.hostname = "ansible.do2.lab"
      ansible.vm.network "private_network", ip: "192.168.99.100"
      ansible.vm.provision "shell", path: "install-ansible.sh"
      ansible.vm.provider :parallels do |prl|
          prl.name = "ansible"
          prl.memory = 1536
          prl.linked_clone = false
      end
  end

  config.vm.define "docker" do |docker|
    docker.vm.box = vm_box
    docker.vm.network "private_network", ip: "192.168.99.101"
    docker.vm.hostname = "docker"
    docker.vm.provider :parallels do |prl|
      prl.name = "docker"
      prl.memory = 1536
      prl.linked_clone = false
    end
  end
end
