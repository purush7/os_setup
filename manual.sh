Exec=/usr/bin/brave-browser-stable --incognito --enable-feature=UseOzonePlatform --ozone-platform-wayland
## in /usr/share/applications/brave-browser.desktop for wayland then xwayland

sudo apt install config-data
dpkg-reconfigure config-data
## load us qwerty to make usb working in wayland


## Add myki
cd /usr/share/applications
sudo echo "[Desktop Entry]\nName=MYKI\nVersion=1.0\nExec=/home/purush/Downloads/MYKI-latest.AppImage" >
myki.desktop
sudo apt update-database
