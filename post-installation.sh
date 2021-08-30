# install editors
apt install vim neovim

# tools
apt install build-essential curl wget git neofetch zsh tree zsh-autosuggestions zsh-syntax-highlighting htop

# programming
apt install npm 

# brave
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

apt update && apt install brave-browser

# sway
apt install sway swayidle swaybg sway-backgrounds grimshot wdisplays wofi kitty waybar # alacritty not in debian

# sway tools
apt install grim mako-notifier jq slurp brightnessctl fzf ffmpeg wf-recorder playerctl wl-clipboard # swappy

# audio
apt install pavucontrol

# video
apt install vlc

# ohmyzsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
p10k configure

