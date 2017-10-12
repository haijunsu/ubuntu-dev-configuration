## Ubuntu development configuration
* Run *bootstrap.sh* to install Ansible.
* Run *ansible-playbook local.yml -i development  -K*

**Note**
To avoid prompt password, please do the following to disable sudo password.
```
echo "$USER ALL=(ALL) NOPASSWD: ALL" > $USER
sudo cp $USER /etc/sudoers.d/
```

<i class="fa fa-info-circle" aria-hidden="true"></i> Note
If nvim cannot find gem neovim plug, please run ```sudo gem install neovim``` manually.
{: .note}

## Reference:
* git@github.com:haijunsu/ubuntu-dev-configuration.git
