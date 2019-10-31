Vagrant.configure('2') do |config|
    config.vm.define "devops"
    config.vm.hostname = "devops"
    config.vm.provider :virtualbox do |vb|
        vb.name = "devops"
    end

    config.vm.box = "ubuntu/bionic64"
    config.disksize.size = "50GB"
    config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 2
    end

    config.vm.synced_folder "../go/", "/home/vagrant/go"
    config.vm.synced_folder "./scripts/", "/home/vagrant/scripts"

    config.vm.provision :shell, :inline => "sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime", run: "always"
    config.vm.provision :shell, :inline => "for f in /home/vagrant/scripts/*.sh; do bash \"$f\"; done", run: "always"
end