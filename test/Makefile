.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh -c "cd /opt/vagrant && g++ -o hello hello.cpp && ./hello"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
