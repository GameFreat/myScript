clear
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
sudo apt install code
printf '\t\t\t__Welcome to my script___\n'
echo "This script install NVM ,also Rocket, a bash script to style the bash prompt"
echo "This script also adds my some personal aliases too."
echo " "
echo "Do you want to install Rocket?(y/n)"
read Rocket
if [[ $Rocket == "y" ]];then
    git clone https://github.com/xenomech/Rocket.git
    cd Rocket
    echo "Do you want to install the plain version or the emoji version?(p/e)"
    read varient
    ./install.sh $varient
#else 
#    echo "Do you want to install the net codes?? y/n"
#    read netCodes
#    if [[ $netCodes == "y" ]];then
#        echo "PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[1;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '" >>~/.bashrc
#        # echo 'PROMPT_COMMAND='echo -en "\033]0; Terminal \a"'" >>~/.bashrc
#    fi
fi
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
echo "Wanna add aliases like 'home=cd ~' and 'root=cd /'?(y/n)"
read resp
if [[ $resp == "y" ]];then
    echo "# Personal Aliases" >>~/.bashrc
    echo "alias home='cd ~'">>~/.bashrc
    echo "alias root='cd /'">>~/.bashrc 
    echo "alias python='python3'">>~/.bashrc
    source ~/.bashrc 
fi
echo "Completed!!!!!!!"
echo "Clear screen??(y/n)"
read clr
if [[ $clr == "y" ]];then
    clear
fi
