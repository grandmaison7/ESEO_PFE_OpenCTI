if !(getent passwd "user-ansible" > /dev/null 2>&1;) then
    sudo useradd user-ansible --shell /bin/bash
    echo 'user-ansible:1621a9' | chpasswd
fi

sudo usermod -aG sudo user-ansible

