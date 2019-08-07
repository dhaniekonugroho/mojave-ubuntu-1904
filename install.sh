#install gnome-tweaks and chrome-gnome-shell
echo "Welcome to Mac OS X Mojave Theme installer for Ubuntu 19.04"
echo "Please visit https://manjaro.site for more information and tutorials"
echo "Updating repository index"
echo "Please wait"
echo "......"
echo "This will update your system "

#sudo apt update && sudo apt upgrade

echo "installing gnome tweak tool and chrome gnome shell"
sudo apt install gnome-tweak-tool chrome-gnome-shell

#wget https://dl.opendesktop.org/api/files/download/id/1563744886/s/2c3884dfacb89f2495ea0bb996176c052e31cbf869c15b5f32b1232d39936b953abf17180317e3d9510a2080a66fd6296a322bad3d53941b8cbb0b917ab972ca/t/1564997371/lt/download/Mojave-CT-Light.tar.xz

echo "Extracting files"
tar -xvf Mojave-dark.tar.xz
tar -xvf Mojave-light.tar.xz
tar -xvf Mojave-CT-Night-Mode.tar.xz
#tar -xvf Mojave-CT-Light.tar.xz

sudo mv Mojave-light /usr/share/themes
sudo mv Mojave-dark /usr/share/themes
sudo mv Mojave-CT-Light /usr/share/icons
sudo mv Mojave-CT-Night-Mode /usr/share/icons
sudo cp macOS-Mojave-Day-wallpaper.jpg /usr/share/backgrounds/

gsettings set org.gnome.desktop.interface gtk-theme "Mojave-dark"
gsettings set org.gnome.desktop.interface icon-theme 'Mojave-CT-Night-Mode'
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/macOS-Mojave-Day-wallpaper.jpg
#Change Dock Settings
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style DEFAULT
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots false
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode DEFAULT
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell enable-hot-corners "true"
#To reset the dock, use this command
#dconf reset -f /org/gnome/shell/extensions/dash-to-dock/
echo "To complete the transformation, please open your web browser and install the Gnome extension pack"
/usr/bin/firefox https://extensions.gnome.org/
/usr/bin/firefox https://extensions.gnome.org/extension/19/user-themes/
