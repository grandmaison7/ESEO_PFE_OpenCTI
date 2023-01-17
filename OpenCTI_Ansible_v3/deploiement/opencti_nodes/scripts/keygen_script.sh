sudo mkdir -p /home/user-ansible/.ssh

sudo ssh-keygen -q -t rsa -N '' -f /home/user-ansible/.ssh/id_rsa <<<y >/dev/null 2>&1

sudo sudo chown -R user-ansible:vagrant /home/user-ansible

