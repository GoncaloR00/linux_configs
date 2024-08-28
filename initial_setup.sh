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
# Waybar
rm -rf $HOME/.config/waybar
ln -sf "$HOME/linux_configs/.config/waybar" "$HOME/.config"
# Terminator
rm -rf $HOME/.config/terminator
ln -sf "$HOME/linux_configs/.config/terminator" "$HOME/.config"
# SDDM
sudo find "$HOME/linux_configs/login_manager/sddm/themes/" -mindepth 1 -maxdepth 1 -exec ln -sf {} "/usr/share/sddm/themes" \;
sudo ln -sf "$HOME/linux_configs/login_manager/sddm/sddm.conf" "/etc/sddm.conf"
