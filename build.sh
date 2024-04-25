#!/bin/bash
rm -rf ~/tmp
mkdir ~/tmp
cp -r . ~/tmp
rm -rf ~/tmp/.git
rm -rf ~/tmp/release
rm -rf ~/tmp/screenshot
rm ~/tmp/.gitignore
rm ~/tmp/build.sh
rm ~/tmp/install.sh
cd ..
ARCH=x86_64 appimagetool tmp
echo ":: AppImage created"
cp ML4W_Hyprland_Settings-x86_64.AppImage ~/ml4w-hyprland-settings/release/
cp ML4W_Hyprland_Settings-x86_64.AppImage ~/dotfiles-versions/dotfiles/apps/
echo ":: AppImage copied to ~/dotfiles-versions/dotfiles/apps/"
