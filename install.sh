mkcdURL=https://raw.github.com/supraboy981322/mkcd/
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
curl $mkcdURL -o mkcd

echo -e "\e[36mProgress: ??%\e[0m"

echo -e "  \e[33mFetched mkcd\e[0m"
echo -e "\e[34mCreating alias\e[0m"
alias mkcd=". /etc/scripts/mkcd"

echo -e "\e[36mProgress: 100%\e[0m"
echo -e "  \e[33mCompleted!\e[33m"

echo -e "\e[34mTesting mkcd\e[0m"
mkcd -h