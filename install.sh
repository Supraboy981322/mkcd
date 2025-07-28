#!/bin/bash
echo -e "\e[36mProgress: 0%\e[0m"

echo -e "  \e[33mInstallation started...\e[0m"
echo -e "\e[34mCreating mkcd install directory\e[0m"
echo -e "\e[33m(please enter your sudo password so the install can create the directory [some systems require it for write access to the required directory])\e[0m"
sudo mkdir /etc/scripts

echo -e "\e[36mProgress: 20%\e[0m"

echo -e "  \e[33mCreated mkcd install directory\e[0m"
echo -e "\e[34mMoving to mkcd install directory\e[0m"
cd /etc/scripts

echo -e "\e[36mProgress: 40%\e[0m"

echo -e "  \e[33mMoved to mkcd install directory\e[0m"
echo -e "\e[34mFetching mkcd\e[0m"
echo -e "  \e[33m(Your sudo password may be required to fetch the script)\e[0m"
sudo curl https://raw.githubusercontent.com/Supraboy981322/mkcd/refs/heads/main/src/mkcd -o mkcd

echo -e "\e[36mProgress: 60%\e[0m"

echo -e "  \e[33mFetched mkcd\e[0m"
echo -e "\e[34mMaking mkcd executable\e[34m"
echo -e "  \e[33m(Your sudo password may be required once more to make it executable)\e[0m"
sudo chmod a+x mkcd

echo -e "\e[36mProgress: 80%\e[0m"

echo -e "  \e[33mMade mkcd executable\e[0m"
echo -e "\e[34mCreating alias\e[0m"
echo "alias mkcd='. /etc/scripts/mkcd'" >> ~/.bashrc 
source ~/.bashrc

echo -e "\e[36mProgress: 100%\e[0m"
echo -e "  \e[33mCompleted!\e[33m"

echo -e "You may have to refresh bashrc before use (\e[32msource ~/.bashrc\e[0m)"
echo -e "\e[34mSee\e[0m \e[32mmkcd -h\e[0m\e[34m for usage\e[0m"
