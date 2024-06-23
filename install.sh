#!/bin/bash
USERNAME=$(whoami)
sudo pacman -Syu
pacman -S --noconfirm cava fastfetch alacritty hyprland waybar swaylock neovim git
git clone https://github.com/kio42069/doftiles ~/.config_repo

CONFIG_DIRS=( libinput-gestures.conf alacritty cava dunst fastfetch hypr neofetch nvim swaylock waybar )
for dir in "${CONFIG_DIRS[@]}"; do
  if [ -d ~/.config_repo/$dir ]; then
    cp -r ~/.config_repo/$dir ~/.config/
  else
    echo "Warning: Directory $dir not found in repository."
  fi
done

USER_FILES=( zshrc )
for file in "${USER_FILES[@]}"; do
  if [ -f ~/.config_repo/$file ]; then
    cp ~/.config_repo/$file /home/$USERNAME/
  else
    echo "Warning: File $file not found in repository."
  fi
done
rm -rf ~/.config_repo
echo "Package installation and configuration complete!"
