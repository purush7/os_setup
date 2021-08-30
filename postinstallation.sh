## Post-installation

# install monaco as system font
# install Ubuntu Nerd Font


## tools
pacman -Syyy base-devel zip unzip tar unrar wget htop clang cmake git python openssh npm alacritty bash-completion
pkgconfig autoconf automake man p7zip bzip2 zstd xz gzip tree clipgrab zsh-lovers --noconfirm --needed

pacman -Syyy neovim go docker docker-compose git  --noconfirm --needed


## install zsh,oh-my-zsh
pacman -Syyy zsh wget curl neofetch htop zsh-autosuggestions zsh-completions zsh-syntax-highlighting --needed --noconfirm
curl -L http://install.ohmyz.sh | sh

chsh -s /bin/zsh
chsh purush -s /bin/zsh


## install yay
pacman -Syyy git base-devel 
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg
ls | grep tar.gz | xargs pacman -U yay-9.4.4-1-x86_64.pkg.tar.xz
cd ..
rm -rf yay


# Aur packages
yay -Syyy spotify-adblock wdisplays brave-bin visual-studio-code-bin --needed --noconfirm


# to update the keys
pacman -Syyyu archlinux-keyring


## sway
pacman -Syyy sway swayidle swaylock swaybg waybar brightnessctl i3status dmenu wallutils --needed --noconfirm

## rofi menu launcher and pavucontrol for audio
pacman -Syyy rofi pavucontrol

## Bluetooth
pacman -Syyy bluez bluez-utils blueman pulseaudio-bluetooth --needed
systemctl enable blutooth.service


pacman -Syyy slurp jq grim mako ffmpeg fzf brightnessctl waybar wf-recorder swappy playerctl
alacritty bluez wl-clipboard --needed --noconfirm


# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
p10k configure

## clone dotfiles
