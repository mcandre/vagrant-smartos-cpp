# vagrant-smartos-cpp: a Vagrant box for building C/C++ binaries for SmartOS

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-smartos-cpp

# EXAMPLE

```console
$ cd test
$ vagrant up
$ vagrant ssh -c "cd /opt/vagrant && g++ -o hello hello.cpp && ./hello"
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-smartos-cpp.box
```
