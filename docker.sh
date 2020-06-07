#!/bin/sh

# https://docs.docker.com/engine/install/fedora
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# https://github.com/docker/for-linux/issues/955
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"
sudo firewall-cmd --permanent --zone=FedoraWorkstation --add-masquerade
sudo dnf -y install moby-engine docker-compose
sudo systemctl enable --now docker
sudo sed -i 's/FirewallBackend=nftables/FirewallBackend=iptables' /etc/firewalld/firewalld.conf

# https://developer.fedoraproject.org/tools/docker/docker-installation.html
sudo groupadd docker
sudo gpasswd -a ${USER} docker
newgrp docker
