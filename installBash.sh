printf '\t\t\t__Script for Bash___\n'
echo "This script install NVM ,also Rocket, a bash script to style the bash prompt"
echo "This script also adds my some personal aliases too."
echo "Do you want to install the net codes?? y/n"
read netCodes
if [[ $netCodes == "y" ]];then
    new_prompt='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[1;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
    echo "export PS1='$new_prompt'" >>~/.bashrc
    source ~/.bashrc
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
