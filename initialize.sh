#!/bin/sh

sudo dnf install git

printf "\n\n\n" | ssh-keygen
cat ~/.ssh/id_rsa.pub

printf "Add SSH key at https://github.com/settings/keys manually [Press any key to confirm]"
read

mkdir ~/Projects
cd ~/Projects
git clone git@github.com:spawnia/fedora-setup.git
