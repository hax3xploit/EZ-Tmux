#!/bin/bash

NOCOLOR='\033[0m'
BOLD='\e[1m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

bar="---------------------------------------"

echo -e "\n$bar\n\t ${RED}EZ Tmux by @hax_3xploit ${NOCOLOR} \n$bar\n"

echo "Make sure you're root before installing the tools"
sleep 4s
clear
echo -e "\n$bar\n\t ${RED}EZ Tmux by @hax_3xploit ${NOCOLOR} \n$bar\n"

is_app_installed() {
    type "$1" &>/dev/null
}

if ! is_app_installed tmux; then
    printf "WARNING: \"tmux\" command is not found.\n"

fi
echo -e "${RED} Installing all dependencies ${NOCOLOR} \n"
cd
sudo apt-get install tmux -y  2>/dev/null
sudo apt-get install wget  -y 2>/dev/null
sudo apt-get install git  -y 2>/dev/null

echo -e "\n$bar\n\t ${LIGHTPURPLE} Dependencies Installed ${NOCOLOR} \n$bar\n"
echo -e "${GREEN}Tmux ✔️ ${NOCOLOR} \n"
sleep 1s
echo -e "${GREEN}Wget ✔️ ${NOCOLOR} \n"
sleep 1s
echo -e "${GREEN}Git  ✔️ ${NOCOLOR} \n"

sleep 2s

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm 2> /dev/null
sleep 1s
wget https://raw.githubusercontent.com/hax3xploit/EZ-Tmux/master/tmux.conf -O $HOME/.tmux.conf 2> /dev/null
sleep 1s


echo -e "\n$bar\n\t ${LIGHTPURPLE}Install plugins ${NOCOLOR}\n$bar\n"
tmux new -d -s __noop >/dev/null 2>&1 || true 
tmux set-environment -g TMUX_PLUGIN_MANAGER_PATH "~/.tmux/plugins"
$HOME/.tmux/plugins/tpm/bin/install_plugins || true
tmux kill-session -t __noop >/dev/null 2>&1 || true

printf "OK: Completed\n"
tmux source $HOME/.tmux.conf
