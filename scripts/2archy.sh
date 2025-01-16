echo .........................................................................
cd
swww img ~/carchy/walls-catppuccin-mocha/pompeii.png

wl-copy < ~/carchy/neovim.txt
git clone https://github.com/NvChad/starter ~/.config/nvim
nvim ~/.config/nvim/init.lua

echo SYSTEM-FILES SETUP.......................................................
wl-copy HandlePowerKey=suspend-then-hibernate
sudoedit /etc/systemd/logind.conf
wl-copy HibernateDelaySec=2400s
sudoedit /etc/systemd/sleep.conf

echo SWAP-HIBERNATE SETUP.....................................................
sudo mkswap -U clear --size 8G --file /swapfile
sudo swapon /swapfile
wl-copy /swapfile none swap defaults 0 0
sudoedit /etc/fstab
wl-copy resume
sudoedit /etc/mkinitcpio.conf
sudo mkinitcpio -P

echo PACKAGES SETUP...........................................................
yay -S --needed clipse-bin ags-hyprpanel-git

echo MYAPPS SETUP.............................................................
echo y | yay -Rs yazi
echo y | yay -S --needed yazi-git brave librewolf emote pavucontrol
echo y | yay -S --needed telegram-desktop lsd bat nautilus mpv eog grimblast
echo y | yay -S --needed fuzzel pacseek nwg-look fastfetch htop blueman btop
echo y | yay -S --needed qt5ct qt6ct kvantum-qt5 power-profiles-daemon

echo myAPPS-DEPENDENCIES SETUP................................................
echo y | yay -S --needed ffmpegthumbnailer python-pillow

sudo systemctl enable --now power-profiles-daemon

nwg-look

echo REBOOT REBOOT REBOOT REBOOT REBOOT REBOOT REBOOT REBOOT REBOOT REBOOT 
