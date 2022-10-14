#!/bin/bash

apt-get install -y -qq figlet
printf "${ORANGE}"
figlet -c install_sys.sh

echo -e "\033[1;95mSTART - install system - \e[0m"

echo -e "\033[1;95m=> [1]: Variable declaration\e[0m"

LOG_FILE="/home/vagrant/logs/install_sys.log"

echo -e "\033[1;95m=> [2]: Updating and Installing required packages\e[0m"

sudo apt update \
  > $LOG_FILE 2>&1

echo -e "\033[1;95m=> [3]: END \e[0m"
