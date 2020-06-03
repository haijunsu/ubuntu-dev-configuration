#!/bin/bash
# Purpose:
#	* bootstrap machine in order to prepare for ansible playbook run

set -e

# disable sudo password
echo "${USER} ALL=(ALL) NOPASSWD: ALL" > ${USER}
chmod 440 ${USER}
sudo chown root:root ${USER}
sudo mv ${USER} /etc/sudoers.d/

# enable firewall
sudo ufw limit ssh
echo y|sudo ufw enable

# docker group
sudo groupadd --system docker
sudo usermod -aG docker ${USER}
# sudo snap disable docker
# sudo snap enable docker

# install ansible and git
sudo apt update
sudo apt install software-properties-common
sudo apt install ansible git -y
