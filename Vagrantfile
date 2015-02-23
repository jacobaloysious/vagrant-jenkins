# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	# Every Vagrant development environment requires a box. You can search for
	# boxes at https://atlas.hashicorp.com/search.
	config.vm.box = "ubuntu/trusty64"
	config.vm.network "forwarded_port", guest: 8080, host: 8087
	
	config.vm.provider "virtualbox" do |vb|
		# Display the VirtualBox GUI when booting the machine
		#vb.gui = true

		# Customize the amount of memory on the VM:
		vb.memory = "1024"
	end

	config.vm.provision :shell, path: "bootstrap.sh"

	# Needs: vagrant plugin install vagrant-proxyconf  
	#config.proxy.http     = "http://squid.jacobaloysious.com:3128/"
	#config.proxy.https    = "http://squid.jacobaloysious.com:3128/"
	#config.proxy.no_proxy = "localhost,127.0.0.1"

  config.vm.post_up_message = <<MSG
  Development guest machine is ready!

  Services available on host:
  - Jenkins running at: http://localhost:8087
  
MSG

end
