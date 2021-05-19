clear
printf '\t\t\t__Welcome to my script___\n'
echo "This script install NVM ,also Rocket, a bash script to style the bash prompt"
echo "This script also adds my some personal aliases too."
echo " "
echo "Do you want to install Rocket?(y/n)"
read Rocket
if [[ $Rocket -eq "y" ]];then
    git clone https://github.com/xenomech/Rocket.git
    cd Rocket
    echo "Do you want to install the plain version or the emoji version?(p/e)"
    read varient
    ./install.sh $varient
fi
echo "Do you want to install NVM?(y/n)"
read nvm
if [[ $nvm -eq "y" ]];then
    echo "# ---------------NVM----------" >>~/.bashrc
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.bashrc
    nvm install 'lts/*'
fi
echo "Wanna add aliases like 'home=cd ~' and 'root=cd /'?(y/n)"
read resp
if [[ $resp -eq "y" ]];then
    echo "# Personal Aliases" >>~/.bashrc
    echo "alias home='cd ~'">>~/.bashrc
    echo "alias root='cd /'">>~/.bashrc 
    source
fi
echo "Completed!!!!!!!"