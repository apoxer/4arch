echo GATHERING_CONFIGSSSSSSSS.................................................

rm -rf ~/4arch/confs
mkdir ~/4arch/confs

cp ~/.config/fish/config.fish ~/4arch/confs
cp ~/.config/uwsm/env ~/4arch/confs

cp ~/.config/kitty/kitty.conf ~/4arch/confs
cp ~/.config/kitty/Catppuccin-Mocha.conf ~/4arch/confs

cp ~/.config/fuzzel/fuzzel.ini ~/4arch/confs

cp ~/.config/hypr/hyprland.conf ~/4arch/confs
cp ~/.config/hypr/hypridle.conf ~/4arch/confs
cp ~/.config/hypr/hyprlock.conf ~/4arch/confs

echo GIT_SHIT.................................................................
cd
cd ~/4arch
git add .
git commit -m "updte whole sht frm scrpt"
git push origin main
cd

echo DONE_MWONEY..............................................................
