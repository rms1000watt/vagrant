$name = ENV['NAME'] || File.basename(Dir.getwd)

$set_environment_variables = <<SCRIPT
cat << EOF > /etc/profile.d/myvars.sh
export NAME=#{$name}
EOF
SCRIPT

Vagrant.configure('2') do |config|
    config.vm.define "#{$name}"
    config.vm.hostname = "#{$name}"
    config.vm.box = "ubuntu/bionic64"
    config.disksize.size = "50GB"
    config.vm.provider :virtualbox do |v|
      v.name = "#{$name}"
      v.cpus = 2
      v.memory = 4096
    end

    config.vm.synced_folder "#{`go env GOPATH`.gsub("\n",'')}/", "/go"
    config.vm.synced_folder "./scripts/", "/vagrant-scripts"
    config.vm.synced_folder "./.ssh/", "/home/vagrant/.ssh"

    config.vm.provision :shell, :inline => "$set_environment_variables", run: "always"
    config.vm.provision :shell, :inline => "sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime", run: "always"
    config.vm.provision :shell, :inline => "for f in /vagrant-scripts/*.sh; do bash \"$f\"; done", run: "always"

    VAGRANT_COMMAND = ARGV[0]
    if VAGRANT_COMMAND == "ssh"
      # config.ssh.username = "#{$name}"
      config.ssh.username = "vagrant"
    end
end