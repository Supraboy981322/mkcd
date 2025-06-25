#!/bin/bash
echo -e "\e[36mProgress: 0%\e[0m"

echo -e "  \e[33mInstallation started...\e[0m"
echo -e "\e[34mCreating mkcd install directory\e[0m"
mkdir /etc/scripts

echo -e "\e[36mProgress: ??%\e[0m"

echo -e "  \e[33mCreated mkcd install directory\e[0m"
echo -e "\e[34mMoving to mkcd install directory\e[0m"
cd /etc/scripts

echo -e "\e[36mProgress: ??%\e[0m"

echo -e "  \e[33mMoved to mkcd install directory\e[0m"
echo -e "\e[34mFetching mkcd\e[0m"
echo -e "  \e[33m(please enter your sudo password so the install can create the script after fetching)\e[0m"
sudo curl https://raw.githubusercontent.com/Supraboy981322/mkcd/refs/heads/main/src/mkcd -o mkcd

echo -e "\e[36mProgress: ??%\e[0m"

echo -e "  \e[33mFetched mkcd\e[0m"
echo -e "\e[34mMaking mkcd executable\e[34m"
echo -e "  \e[33m(Your sudo password may be required once more to make it executable)\e[0m"
sudo chmod +x mkcd

echo -e "\e[36m Progress: ??%\e[0m"

echo -e "  \e[33mMade mkcd executable\e[0m"
echo -e "\e[34mCreating alias\e[0m"
echo "alias mkcd='. /etc/scripts/mkcd'" >> ~/.bashrc 
source ~/.bashrc

echo -e "\e[36mProgress: 100%\e[0m"
echo -e "  \e[33mCompleted!\e[33m"

echo -e "\e[34mTesting mkcd\e[0m"
mkcd -h