#!/bin/bash
#This script is made to install a VM with Debian on 42's Mac
#Available space is a pb so we must use the sgoinfre repo of the user to install it

mkdir /Volumes/Storage/goinfre/$USER/vagrant &> /dev/null
echo "vagrant directory can be reach at :/Volumes/Storage/goinfre/$USER/vagrant \n"
export VAGRANT_HOME=/Volumes/Storage/goinfre/$USER/vagrant
echo "Temporary path VAGRANT_HOME created\n"
rm  Vagrantfile
echo "Vagrant.configure(\"2\") do |config|\nconfig.vm.box = \"debian/stretch64\"\nconfig.vm.synced_folder \".\", \"/git\"\nend" >> Vagrantfile
echo "Vagrantfile created\n"
echo "installing vbguest...\n"
vagrant plugin install vagrant-vbguest > /dev/null
echo "vbguest installed\n"
echo "creating VM...\n"
vagrant up > /dev/null
vagrant vbguest > /dev/null
echo "VM created\n"
echo "You'll be soon on your VM, Congrats !\nTo exit your VM, please type the exit command.\nyou can launch it in the futur with the \"vagrant ssh\" command.\n\n"
vagrant ssh
