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
sleep 5s
clear

echo "${WHITE}Installing all dependencies${WHITE}\n"
cd
sudo apt-get install tmux -y 2> /dev/null
sudo apt-get install wget -y 2> /dev/null
sudo apt-get install git -y 2> /dev/null

echo -e "\n$bar\n\t ${LIGHTPURPLE} Dependencies Installed ${LIGHTPURPLE} \n$bar\n"
echo -e "\t ${GREEN}EZ Tmux ✔️ ${GREEN} \n"
sleep 1s
echo -e "\t ${GREEN}EZ Wget ✔️ ${GREEN} \n"
sleep 1s
echo -e "\t ${GREEN}EZ Git  ✔️ ${GREEN} \n"

sleep 2s

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
sleep 1s
wget https://raw.githubusercontent.com/hax3xploit/EZ-Tmux/master/tmux.conf -O .tmux.conf
sleep 1s
tmux source ~/.tmux.conf
sleep 2s
tmux new -d -s mySession;tmux send-keys -t  mySession.0 clear ENTER 'echo  "1 - Press prefix + I (capital i, as in Install - e.g: ctrl+a i) to install the plugins.\n2 - type tmux source ~/.tmux.conf and create a new session"' ENTER;tmux a -t mySession
