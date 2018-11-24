#! /bin/bash
[ ! $(id -u) == "0" ] || { echo "ERROR: You should't be root"; exit 1; }
chsh -s /bin/zsh
wget https://github.com/zsh-users/antigen/releases/download/v2.2.3/antigen.zsh
mv antigen.zsh "$HOME"/.antigen.zsh
mv .zshrc  "$HOME"/