#/bin/bash

sudo pacman -Syu ttf-meslo-nerd alacritty polybar i3 feh picom rofi stow xorg-xrandr zsh xorg-xinit xorg xorg-server --noconfirm --needed
cd ~/dotfiles
stow alacritty
stow i3
stow backgrounds
stow picom
stow rofi
stow zsh
stow neofetch
stow nvim
stow polybar
stow scripts

echo "installation done! now start xorg with i3"
