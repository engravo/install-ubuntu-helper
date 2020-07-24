#!/bin/bash

echo -e
echo -e "\e[33mThis script expects your SSH keys to be in 'C:\Windows\Users\<User>\.ssh\'\e[0m"
echo -e
cd ~
mkdir .ssh projects
chmod 700 .ssh
cd .ssh
echo -e
echo -e "\e[33mEnter your Windows user name:\e[0m"
echo -e
read WIN_USER
cp /mnt/c/Users/${WIN_USER}/.ssh/* .
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
echo -e
echo -e "\e[33mAlright ${USERNAME} (${MAIL})!\e[0m"
echo -e
git clone git@gitlab.com:engravo/scripts.git
