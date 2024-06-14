#!/bin/bash

# Create the ZSH env file to point to the config directory
> $HOME/.zshenv
touch $HOME/.zshenv
echo 'ZDOTDIR=$HOME/linux_configs/terminal/zsh' >> $HOME/.zshenv

# Create symbolic links to config files
# Hyprland
rm -rf $HOME/.config/hypr
ln -sf "$HOME/linux_configs/.config/hypr" "$HOME/.config"
# rofi
rm -rf $HOME/.config/rofi
ln -sf "$HOME/linux_configs/.config/rofi" "$HOME/.config"
