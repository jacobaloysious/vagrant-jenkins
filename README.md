
# Running Jenkins on a Ubuntu VM

This repo is for configuring (virtual) machines for getting Jenkins easily up and running.
It uses [Vagrant](https://docs.vagrantup.com/v2/).

To use:

- Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](https://www.vagrantup.com/downloads.html)
- Make sure ssh.exe (from MinGW or similar) is available in PATH
- Optional: Install Vagrant proxy: `vagrant plugin install vagrant-proxyconf`. And then comment out config.proxy.* setting in the Vagrantfile
- Build/provision the guest machine `vagrant up`.
- First time it would take quite some time.


## When development guest is ready
- See build command output for info on what ports the services are available.
-- Jenkins running at: http://localhost:8087

### When you are done working for the day

```
vagrant suspend
```

### When you start working the next morning

```
vagrant up
```

# Install and compile
```
vagrant provision
```

### More details

Commands available in guest (`vagrant ssh` to log in):
