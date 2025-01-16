echo WIFI SETUP...............................................................
sudo nmcli dev wifi connect GNXS-494BD8 password ""1234567890""

echo YAY SETUP................................................................
sudo pacman -Syu
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd

echo UPDATING SYSTEM..........................................................
yay

echo CHAOTIC_AUR SETUP........................................................
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
echo y | sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
echo y | sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo PACMAN_FILE SETUP........................................................
sudo nvim /etc/pacman.conf

echo UPDATING AGAIN...........................................................
yay

echo HYPRLAND_and_its_DEPS SETUP..............................................
echo y | yay -S --needed hyprland-git xdg-desktop-portal-hyprland-git
echo y | yay -S --needed qt5-wayland hypridle-git hyprlock-git hyprpicker-git

echo OTHER_APPS_NEEDED SETUP...................................................
echo y | yay -S --needed kitty-git brightnessctl wl-clipboard uwsm fish
echo y | yay -S --needed bibata-cursor-theme catppuccin-gtk-theme-mocha
echo y | yay -S --needed lsd bat swww lua-language-server

echo SOME_FONTS_TOOOO..........................................................
echo y | yay -S --needed ttf-jetbrains-mono-nerd noto-fonts noto-fonts-cjk
echo y | yay -S --needed noto-fonts-emoji noto-fonts-extra

echo CONFIGURING DOTFILES......................................................
rm ~/.config/fish/config.fish
mkdir ~/.config/fish
cp ~/4arch/confs/config.fish ~/.config/fish

rm -rf ~/.config/uwsm
mkdir ~/.config/uwsm
cp ~/4arch/confs/env ~/.config/uwsm

rm -rf ~/.config/kitty
mkdir ~/.config/kitty
cp ~/4arch/confs/kitty.conf ~/.config/kitty
cp ~/4arch/confs/Catppuccin-Mocha.conf ~/.config/kitty

mkdir ~/.config/fuzzel
cp ~/4arch/confs/fuzzel.ini ~/.config/fuzzel

rm -rf ~/.config/hypr
mkdir ~/.config/hypr
cp ~/4arch/confs/hyprland.conf ~/.config/hypr
cp ~/4arch/confs/hypridle.conf ~/.config/hypr
cp ~/4arch/confs/hyprlock.conf ~/.config/hypr

chsh -s /usr/bin/fish

reboot
