#!/bin/sh
# Update and upgrade #
sudo apt-get update
sudo apt-get upgrade
# Remove unrequired apps (except 'Mines') #
sudo apt remove aisleriot gnome-mahjongg gnome-sudoku 
# Install new apps #
sudo apt install python2.7 python-pip
sudo apt-get install git
sudo apt-get install vim
# Install vim configs #
sudo apt-get install build-essential cmake
git clone --recurse-submodules https://github.com/samuelspurling/.vim ~/.vim
python ~/.vim/bundle/YouCompleteMe/install.py
