#!/usr/bin/env sh

sudo apt-get install texlive-xetex

# download fontin
wget http://www.exljbris.com/dl/fontin2_pc.zip
unzip fontin2_pc.zip

# install fonts
mkdir ~/.local/share/fonts
mv *.ttf ~/.local/share/fonts/

# clear cache
fc-cache -f -v

# verify
fc-list | grep "Fontin"
