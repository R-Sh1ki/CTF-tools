#!/bin/bash

if [[ ! -d tools ]]; then
  mkdir tools
fi
cd tools

# Misc
if [[ ! -d misc-tools ]]; then
  mkdir misc-tools
fi

cd misc-tools

# ----------  forensics  ----------
sudo apt-get install -y binwalk foremost

# ---------- Stego Tools ----------
if [[ ! -d stego ]]; then
  mkdir stego
fi

cd stego

# steghide
sudo apt-get install -y steghide

# pngtools
sudo apt-get install -y pngtools

# audacity
sudo snap install audacity

# zsteg
sudo apt-get install -y ruby-full rubygems
sudo gem install zsteg

# stegsolve
if [[ ! -d stegsolve ]]; then
  mkdir stegsolve
  cd stegsolve
  wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
  chmod +x stegsolve.jar
  cd ..
fi

# stegseek
wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb -O stegseek.deb
sudo dpkg -i stegseek.deb
rm stegseek.deb

# stegosaurus
git clone https://github.com/AngelKitty/stegosaurus.git --depth 1

# sonic visualiser
wget https://github.com/sonic-visualiser/sonic-visualiser/releases/download/sv_v4.5/sonic-visualiser_4.5_amd64.deb -O sonic-visualiser.deb
sudo dpkg -i sonic-visualiser.deb
rm -rf sonic-visualiser.deb

sudo apt --fix-broken install 
cd ..

# -------------------------------------
cd ..

# PWN
pip install pwntools

# Web Tools 
sudo apt-get install -y wireshark dirsearch sqlmap nmap netcat

if [[ ! -d web-tools ]]; then
  mkdir web-tools
fi
cd web-tools
cd ..

# Reverse
# if [[ ! -d reverse-tools ]]; then
#   mkdir reverse-tools
# fi
# cd reverse-tools
# git clone https://github.com/radareorg/radare2.git --depth 1
# ./radare2/sys/install.sh
# cd ..
