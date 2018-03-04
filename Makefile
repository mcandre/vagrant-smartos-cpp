BOX_DISCLESS=vagrant-smartos-cpp-discless.box
BOX=vagrant-smartos-cpp.box

.PHONY: launch-vm clean-vm clean-boxes clean-vagrant-metadata clean-box-workspace

launch-vm: Vagrantfile bootstrap.sh
	vagrant up

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean-box-workspace:
	-rm -rf box-discless

clean: clean-boxes clean-vm clean-vagrant-metadata clean-box-workspace

$(BOX_DISCLESS): clean-boxes clean-vm launch-vm export.Vagrantfile
	vagrant package --output $(BOX_DISCLESS) --vagrantfile export.Vagrantfile

smartos-20180203T031130Z.iso:
	curl -LO "https://us-east.manta.joyent.com/Joyent_Dev/public/builds/smartos/release-20180201-20180203T031130Z/smartos/smartos-20180203T031130Z.iso"

$(BOX): $(BOX_DISCLESS) box.ovf smartos-20180203T031130Z.iso
	mkdir -p box-discless
	tar xzvf $(BOX_DISCLESS) -C box-discless
	cp box.ovf box-discless
	cp smartos-20180203T031130Z.iso box-discless/box-disk002.iso
	tar czvf $(BOX) -C box-discless box.ovf Vagrantfile include box-disk001.vmdk box-disk002.iso

install-box-virtualbox: $(BOX)
	vagrant box add --force --name mcandre/vagrant-smartos-cpp $(BOX)
