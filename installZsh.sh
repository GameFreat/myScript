printf '\t\t\t__Script for ZSH___\n'
sudo apt install zsh
echo "Installing oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
sleep 3
echo "Backing up the current .zshrc as .zshrc.bak "
cp ~/.zshrc ~/.zshrc.bak
sleep 3
echo "Downloading fonts"
git clone https://github.com/powerline/fonts
./fonts/install.sh
mv .zshrc ~/
sleep 3
RED=$(tput setaf 1)
normal=$(tput sgr0)
clear
echo "Wanna add aliases like 'home=cd ~' and 'root=cd /'?(y/n)"
read resp
if [[ $resp == "y" ]];then
    echo "# Personal Aliases" >>~/.zshrc
    echo "alias home='cd ~'">>~/.zshrc
    echo "alias root='cd /'">>~/.zshrc 
    echo "alias python='python3'">>~/.zshrc
fi
clear
printf "%40s\n" "${RED}Change the Font to 12pt Meslo LG S DZ Regular for Powerline ${normal}"
echo "waiting for 10 second before rebooting"
for i in $(seq 0 1 20)
do
   clear
   printf "%40s\n" "${RED}Change the Font to 12pt Meslo LG S DZ Regular for Powerline ${normal}"
   echo "waiting for $(expr 20 - $i) second before rebooting"
   sleep 1

done
sleep 10
reboot