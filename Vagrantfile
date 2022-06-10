Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 2
    vb.name = "ubuntu_bionic_aws-cli"
  end

  config.vm.define "aws-cli" do |aws|
    aws.vm.provision "shell",
    inline: "apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y unzip && \
    curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o 'awscliv2.zip' && \
    unzip awscliv2.zip && \
    sudo ./aws/install"
  end

end