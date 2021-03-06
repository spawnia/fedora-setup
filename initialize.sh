#!/bin/sh

sudo dnf install git

printf "\n\n\n" | ssh-keygen
cat ~/.ssh/id_rsa.pub

printf "Add SSH key at https://github.com/settings/keys manually [Press any key to confirm]"
read

cd ~
git clone git@github.com:spawnia/fedora-setup.git

fedora-setup/setup.sh
