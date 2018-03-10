#!/bin/sh
# Update and upgrade #
sudo apt-get -y update
sudo apt-get -y upgrade
# Remove unrequired apps (except 'Mines') #
sudo apt remove -y aisleriot gnome-mahjongg gnome-sudoku 
# Install new apps #
sudo apt install -y python2.7 python-pip
sudo apt install -y curl
sudo apt-get -y install git
sudo apt-get -y install vim
# Install vim configs #
sudo apt-get -y install build-essential cmake
git clone --recurse-submodules https://github.com/samuelspurling/.vim ~/.vim
python ~/.vim/bundle/YouCompleteMe/install.py
# Change terminal colors to be not horrible #
mkdir ~/temp
git clone git://github.com/pricco/gnome-terminal-colors-monokai.git ~/temp/gnome-terminal-colors-monokai
~/temp/gnome-terminal-colors-monokai/install.sh
rm -r ~/temp
