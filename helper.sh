#!/bin/bash

cd ~
mkdir .ssh projects
chmod 700 .ssh
cd .ssh
cp /mnt/c/Users/$USER/.ssh/* .
chmod 600 *
chmod 644 *.pub known_hosts
cd ../projects
echo -e
echo -e "\e[33mEnter your mail for Git:\e[0m"
echo -e
read MAIL
echo -e
echo -e "\e[33mEnter your username for Git:\e[0m"
echo -e
read USERNAME
git config --global user.email "${MAIL}"
git config --global user.name "${USERNAME}"
git config --global core.filemode false
echo -e
echo -e "\e[33mAlright ${USERNAME} (${MAIL})!\e[0m"
echo -e
git clone git@gitlab.com:engravo/scripts.git
cd scripts
git checkout feature/ubuntu-install-script-#5jhywp
