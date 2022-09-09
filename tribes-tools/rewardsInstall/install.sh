#!/bin/bash

# Installation:
apt install wget python3 python3-pip nano -y 
python3 -m pip install requests

read -p 'Url: ' url
read -p 'Trible wallet : ' twallet
read -p 'Wallet ID : ' idwallet
read -p 'Commission wallet : ' cwallet
read -p 'Pourcentage commission : ' pcom


# Téléchargement du fichier:
wget "https://myecoria.com/tribleGenerator/?submit=submit&url=${url}&wallet=${twallet}&walletId=${idwallet}&walletCom=${cwallet}&pourCom=${pcom}" -O ~/rewardBot.py

# Planificateur de tâche:
export EDITOR=nano
read -p 'Spacing between each execution (In hour [1-24]): ' timel
echo "All you have to do is run this command: crontab -e and add this line at the end of the file: 00 */${timel} * * * python3 ~/rewardBot.py";
