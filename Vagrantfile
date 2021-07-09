$name = ENV['NAME'] || File.basename(Dir.getwd)

Vagrant.configure('2') do |config|
    config.vm.define "#{$name}"
    config.vm.hostname = "#{$name}"
    # config.vm.box = "ubuntu/focal64"
    config.vm.box = "chenhan/lubuntu-desktop-20.04"
    config.disksize.size = "50GB"
    config.vm.provider :virtualbox do |v|
      v.name = "#{$name}"
      v.cpus = 2
      v.memory = 4096
    end

    config.vm.synced_folder "#{`go env GOPATH`.gsub("\n",'')}/", "/go"
    config.vm.synced_folder "./scripts/",                        "/scripts"
    config.vm.synced_folder "./aws/",                            "/home/vagrant/.aws"

    config.vm.provision :file, :source => "#{ENV['HOME']}/.ssh/id_rsa_#{$name}",     destination: "/home/vagrant/.ssh/id_rsa_#{$name}"
    config.vm.provision :file, :source => "#{ENV['HOME']}/.ssh/id_rsa_#{$name}.pub", destination: "/home/vagrant/.ssh/id_rsa_#{$name}.pub"

    config.vm.provision :shell, :inline => "sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime", run: "always", privileged: false
    config.vm.provision :shell, :inline => "set -e && export NAME=#{$name} && bash /scripts/provision.sh", run: "always",  privileged: false
end

# export ASDF_DATA_DIR=/home/vagrant/asdf
