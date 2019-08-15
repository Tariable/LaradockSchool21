#!/bin/sh

# Setup Brew
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

# Setup docker from Brew
brew install docker
brew install docker-machine
brew install docker-compose

# Create a docker machine --version=18.09.05
docker-machine create matcha --virtualbox-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v18.09.5/boot2docker.iso

# Create symbolic links
mv ~/.docker ~/goinfre/
mv ~/VirtualBox\ VMs ~/goinfre/
ln -s ~/goinfre/.docker ~/
ln -s ~/goinfre/VirtualBox\ VMs ~/



