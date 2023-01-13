## PREREQUIS

sudo apt update
sudo apt install python3.11 -y
sudo apt install python3-virtualenv sshpass -y

## ENVIRONNEMENT VIRTUEL

sudo virtualenv ansible
source ansible/bin/activate

## INSTALL. ANSIBLE DANS VIRT.

pip install ansible
ansible --version

## VERIF INSTALLATION DANS VIRT.

ls ansible/bin/ansible* -l

