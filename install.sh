if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
sudo apt install code
echo "Do you want to install NVM?(y/n)"
read nvm
if [[ $nvm == "y" ]];then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    export NVM_DIR="$HOME/.config/nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads
    source ~/.bashrc
    nvm install 'lts/*'
fi
echo "do you want to try zsh or go with bash (z / b)"
read choice
if [[ $choice == "z" ]];then
    echo "setting up ZSH"
    ./installZsh.sh
else
    echo "setting up bash"
    ./installBash.sh
fi
