## Ubuntu development configuration
* Run *bootstrap.sh* to install Ansible.
* Run *ansible-playbook local.yml -i development*

**Note**
To avoid prompt password, please do the following to disable sudo password.
```
echo "$USER ALL=(ALL) NOPASSWD: ALL" > $USER
sudo cp $USER /etc/sudoers.d/
```

If nvim cannot find gem neovim plugin, please run ```sudo gem install neovim``` manually.

## Reference:
* git@github.com:haijunsu/ubuntu-dev-configuration.git
