#!/bin/bash

# By Sung Mingi a.k.a. FiestaLake.
# Inspired by ripee's script called build_environment.sh.
# I use this for ubuntu docker setup.
# As it doesn't have sudo and text editors by default, we will do it here.
# ---
#apt-get -y update
#apt-get -y upgrade
#apt-get -y dist-upgrade
#apt-get -y install sudo vim nano
# ---

# Time to install lots of stuff.
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y remove openjdk-* icedtea-* icedtea6-*
sudo apt-get -y install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop openjdk-8-jdk pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev python-is-python3
sudo apt -y autoremove

# Install repo.
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# Etc...
ccache -M 50G
echo 'export USE_CCACHE=1' >> ~/.bashrc
echo 'export CCACHE_EXEC=/usr/bin/ccache' >> ~/.bashrc
echo 'export LANG=C' >> ~/.bashrc
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
. ~/.bashrc

# Setup Git.
#git config --global user.name "#"
#git config --global user.email "#"
