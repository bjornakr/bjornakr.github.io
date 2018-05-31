sudo apt upgrade
sudo apt install xfce4
sudo apt install guake
sudo apt install fish
sudo apt install xfce4-systemload-plugin
sudo apt install mc
sudo apt install chromium-browser
sudo apt install albert

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


# Making tmux use fish
echo 'set-option -g default-shell "/usr/bin/fish"' > ~/.tmux.conf


# Removing folders I don't use.
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music


# Autostart
cat <<EOT >> ~/.config/autostart/guake.desktop
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=guake
Comment=
Exec=guake
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
EOT


cat <<EOT >> ~/.config/autostart/albert.desktop
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=albert
Comment=
Exec=albert
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
EOT
