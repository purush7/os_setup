Exec=/usr/bin/brave-browser-stable --incognito --enable-feature=UseOzonePlatform --ozone-platform-wayland
## in /usr/share/applications/brave-browser.desktop for wayland then xwayland

sudo apt install config-data
dpkg-reconfigure config-data
## load us qwerty to make usb working in wayland


## Add myki
cd /usr/share/applications
sudo echo "[Desktop Entry]\nName=MYKI\nVersion=1.0\nExec=/home/purush/Downloads/MYKI-latest.AppImage" >
myki.desktop
sudo update-desktop-database

## install spotify-adblocker
# sudo apt install cargo # dep for adblocker
## install spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client spotify-client-gnome-support

# echo "git clone the spotify-adblocker repo"
# echo "[Desktop Entry]\nType=Application\nName=Spotify (adblock)\nGenericName=Music Player\nIcon=spotify-client\nTryExec=spotify\nExec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U\nTerminal=false\nMimeType=x-scheme-handler/spotify;\nCategories=Audio;Music;Player;AudioVideo;\nStartupWMClass=spotify\n" > /usr/share/applications/spotify-adblocker.desktop

# sudo update-desktop-database

# or

echo "##Spotify Blocked ads\n0.0.0.0 pubads.g.doubleclick.net\n0.0.0.0
securepubads.g.doubleclick.net\n0.0.0.0 http://www.googletagservices.com\n0.0.0.0
gads.pubmatic.com\n0.0.0.0 ads.pubmatic.com\n0.0.0.0 spclient.wg.spotify.com" >> /etc/hosts


## bluetooth
sudo apt install bluemanager


