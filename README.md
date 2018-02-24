# vagrant-freebsd-rust: a Vagrant box for building Rust binaries for SmartOS

# DISCLAIMER

Work in progress. Need to setup a working SmartOS base box first.

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "cd /vagrant && rustc hello.rs && ./hello"
Hello World!
```

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* A VM provider, such as [VirtualBox](https://www.virtualbox.org), [VMware](https://www.vmware.com), or [libvirt](https://libvirt.org)
