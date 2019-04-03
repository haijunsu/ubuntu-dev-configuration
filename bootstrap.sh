#!/bin/bash
# Purpose:
#	* bootstrap machine in order to prepare for ansible playbook run

set -e

# disable sudo password
echo "${USER} ALL=(ALL) NOPASSWD: ALL" > ${USER}
chmod 440 ${USER}
sudo chown root:root ${USER}
sudo mv ${USER} /etc/sudoers.d/

# install ansible and git
sudo apt-add-repository ppa:ansible/ansible
# if report issue for install ansible as "Fails due to SSHPASS dependency", uncomment next line to fix it.
# sudo add-apt-repository universe
sudo apt update
sudo apt install ansible git -y
sudo snap install ripgrep --classic
